
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct smc_private {int lock; } ;
struct net_device {unsigned int base_addr; int flags; int mc_list; scalar_t__ mc_count; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ MULTICAST0 ;
 scalar_t__ MULTICAST4 ;
 scalar_t__ RCR ;
 int RxAllMulti ;
 int RxEnable ;
 int RxPromisc ;
 int RxStripCRC ;
 int SMC_SELECT_BANK (int) ;
 int fill_multicast_tbl (scalar_t__,int ,int *) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int outl (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_rx_mode(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    struct smc_private *smc = netdev_priv(dev);
    u_int multicast_table[ 2 ] = { 0, };
    unsigned long flags;
    u_short rx_cfg_setting;

    if (dev->flags & IFF_PROMISC) {
 rx_cfg_setting = RxStripCRC | RxEnable | RxPromisc | RxAllMulti;
    } else if (dev->flags & IFF_ALLMULTI)
 rx_cfg_setting = RxStripCRC | RxEnable | RxAllMulti;
    else {
 if (dev->mc_count) {
     fill_multicast_tbl(dev->mc_count, dev->mc_list,
          (u_char *)multicast_table);
 }
 rx_cfg_setting = RxStripCRC | RxEnable;
    }


    spin_lock_irqsave(&smc->lock, flags);
    SMC_SELECT_BANK(3);
    outl(multicast_table[0], ioaddr + MULTICAST0);
    outl(multicast_table[1], ioaddr + MULTICAST4);
    SMC_SELECT_BANK(0);
    outw(rx_cfg_setting, ioaddr + RCR);
    SMC_SELECT_BANK(2);
    spin_unlock_irqrestore(&smc->lock, flags);

    return;
}
