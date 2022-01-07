
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int if_port; } ;


 int EL3WINDOW (int) ;
 scalar_t__ EL3_CMD ;
 int MEDIA_TP ;
 int RxDisable ;
 int SetIntrEnb ;
 int StatsDisable ;
 int StopCoax ;
 int TxDisable ;
 scalar_t__ WN4_MEDIA ;
 int inw (scalar_t__) ;
 int netif_stop_queue (struct net_device*) ;
 int outw (int,scalar_t__) ;
 int update_stats (struct net_device*) ;

__attribute__((used)) static void
el3_down(struct net_device *dev)
{
 int ioaddr = dev->base_addr;

 netif_stop_queue(dev);


 outw(StatsDisable, ioaddr + EL3_CMD);


 outw(RxDisable, ioaddr + EL3_CMD);
 outw(TxDisable, ioaddr + EL3_CMD);

 if (dev->if_port == 3)

  outw(StopCoax, ioaddr + EL3_CMD);
 else if (dev->if_port == 0) {

  EL3WINDOW(4);
  outw(inw(ioaddr + WN4_MEDIA) & ~MEDIA_TP, ioaddr + WN4_MEDIA);
 }

 outw(SetIntrEnb | 0x0000, ioaddr + EL3_CMD);

 update_stats(dev);
}
