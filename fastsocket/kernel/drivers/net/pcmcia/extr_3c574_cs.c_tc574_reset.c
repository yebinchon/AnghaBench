
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; int* dev_addr; int mtu; } ;
struct el3_private {int advertising; int window_lock; int phys; scalar_t__ autoselect; } ;


 int AckIntr ;
 int AdapterFailure ;
 int EL3WINDOW (int) ;
 unsigned int EL3_CMD ;
 int IntLatch ;
 int IntReq ;
 unsigned int RunnerRdCtrl ;
 unsigned int RunnerWrCtrl ;
 int RxComplete ;
 int RxEarly ;
 int RxEnable ;
 int RxReset ;
 int SetIntrEnb ;
 int SetStatusEnb ;
 int StatsDisable ;
 int StatsEnable ;
 int StatsFull ;
 int TotalReset ;
 int TxAvailable ;
 int TxEnable ;
 int TxReset ;
 scalar_t__ Wn3_Config ;
 unsigned int Wn3_MAC_Ctrl ;
 unsigned int Wn3_Options ;
 unsigned int Wn4_NetDiag ;
 int auto_polarity ;
 int inb (unsigned int) ;
 int inw (unsigned int) ;
 int mdelay (int) ;
 int mdio_read (unsigned int,int ,int) ;
 int mdio_sync (unsigned int,int) ;
 int mdio_write (unsigned int,int ,int,int) ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int outb (int,unsigned int) ;
 int outl (int,scalar_t__) ;
 int outw (int,unsigned int) ;
 int set_rx_mode (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tc574_wait_for_completion (struct net_device*,int) ;

__attribute__((used)) static void tc574_reset(struct net_device *dev)
{
 struct el3_private *lp = netdev_priv(dev);
 int i;
 unsigned int ioaddr = dev->base_addr;
 unsigned long flags;

 tc574_wait_for_completion(dev, TotalReset|0x10);

 spin_lock_irqsave(&lp->window_lock, flags);

 outw(0, ioaddr + RunnerWrCtrl);
 outw(0, ioaddr + RunnerRdCtrl);


 EL3WINDOW(2);
 for (i = 0; i < 6; i++)
  outb(dev->dev_addr[i], ioaddr + i);
 for (; i < 12; i+=2)
  outw(0, ioaddr + i);


 EL3WINDOW(3);
 outb((dev->mtu > 1500 ? 0x40 : 0), ioaddr + Wn3_MAC_Ctrl);
 outl((lp->autoselect ? 0x01000000 : 0) | 0x0062001b,
   ioaddr + Wn3_Config);

 outw(0x8040, ioaddr + Wn3_Options);
 mdelay(1);
 outw(0xc040, ioaddr + Wn3_Options);
 EL3WINDOW(1);
 spin_unlock_irqrestore(&lp->window_lock, flags);

 tc574_wait_for_completion(dev, TxReset);
 tc574_wait_for_completion(dev, RxReset);
 mdelay(1);
 spin_lock_irqsave(&lp->window_lock, flags);
 EL3WINDOW(3);
 outw(0x8040, ioaddr + Wn3_Options);


 outw(StatsDisable, ioaddr + EL3_CMD);
 EL3WINDOW(6);
 for (i = 0; i < 10; i++)
  inb(ioaddr + i);
 inw(ioaddr + 10);
 inw(ioaddr + 12);
 EL3WINDOW(4);
 inb(ioaddr + 12);
 inb(ioaddr + 13);


 outw(0x0040, ioaddr + Wn4_NetDiag);

 EL3WINDOW(1);
 spin_unlock_irqrestore(&lp->window_lock, flags);


 mdio_sync(ioaddr, 32);
 mdio_write(ioaddr, lp->phys, 4, lp->advertising);
 if (!auto_polarity) {

  i = mdio_read(ioaddr, lp->phys, 16) | 0x20;
  mdio_write(ioaddr, lp->phys, 16, i);
 }

 spin_lock_irqsave(&lp->window_lock, flags);

 set_rx_mode(dev);
 spin_unlock_irqrestore(&lp->window_lock, flags);
 outw(StatsEnable, ioaddr + EL3_CMD);
 outw(RxEnable, ioaddr + EL3_CMD);
 outw(TxEnable, ioaddr + EL3_CMD);

 outw(SetStatusEnb | 0xff, ioaddr + EL3_CMD);

 outw(AckIntr | IntLatch | TxAvailable | RxEarly | IntReq,
   ioaddr + EL3_CMD);
 outw(SetIntrEnb | IntLatch | TxAvailable | RxComplete | StatsFull
   | AdapterFailure | RxEarly, ioaddr + EL3_CMD);
}
