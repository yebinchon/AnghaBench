
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct gem {int mac_rx_cfg; int lock; int tx_lock; scalar_t__ regs; int running; } ;


 scalar_t__ MAC_RXCFG ;
 int MAC_RXCFG_ENAB ;
 int MAC_RXCFG_HFE ;
 int MAC_RXCFG_PROM ;
 int MAC_RXCFG_SFCS ;
 int gem_setup_multicast (struct gem*) ;
 struct gem* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gem_set_multicast(struct net_device *dev)
{
 struct gem *gp = netdev_priv(dev);
 u32 rxcfg, rxcfg_new;
 int limit = 10000;


 spin_lock_irq(&gp->lock);
 spin_lock(&gp->tx_lock);

 if (!gp->running)
  goto bail;

 netif_stop_queue(dev);

 rxcfg = readl(gp->regs + MAC_RXCFG);
 rxcfg_new = gem_setup_multicast(gp);



 gp->mac_rx_cfg = rxcfg_new;

 writel(rxcfg & ~MAC_RXCFG_ENAB, gp->regs + MAC_RXCFG);
 while (readl(gp->regs + MAC_RXCFG) & MAC_RXCFG_ENAB) {
  if (!limit--)
   break;
  udelay(10);
 }

 rxcfg &= ~(MAC_RXCFG_PROM | MAC_RXCFG_HFE);
 rxcfg |= rxcfg_new;

 writel(rxcfg, gp->regs + MAC_RXCFG);

 netif_wake_queue(dev);

 bail:
 spin_unlock(&gp->tx_lock);
 spin_unlock_irq(&gp->lock);
}
