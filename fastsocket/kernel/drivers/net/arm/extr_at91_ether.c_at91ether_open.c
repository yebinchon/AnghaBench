
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct at91_private {int lock; int ether_clk; } ;


 unsigned long AT91_EMAC_ABT ;
 unsigned long AT91_EMAC_CSR ;
 int AT91_EMAC_CTL ;
 int AT91_EMAC_IER ;
 unsigned long AT91_EMAC_RBNA ;
 unsigned long AT91_EMAC_RCOM ;
 unsigned long AT91_EMAC_ROVR ;
 unsigned long AT91_EMAC_RTRY ;
 unsigned long AT91_EMAC_TCOM ;
 unsigned long AT91_EMAC_TUND ;
 int EADDRNOTAVAIL ;
 unsigned long at91_emac_read (int ) ;
 int at91_emac_write (int ,unsigned long) ;
 int at91ether_start (struct net_device*) ;
 int clk_enable (int ) ;
 int disable_mdi () ;
 int enable_mdi () ;
 int enable_phyirq (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 struct at91_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_linkspeed (struct net_device*,int ) ;
 int update_mac_address (struct net_device*) ;

__attribute__((used)) static int at91ether_open(struct net_device *dev)
{
 struct at91_private *lp = netdev_priv(dev);
 unsigned long ctl;

 if (!is_valid_ether_addr(dev->dev_addr))
  return -EADDRNOTAVAIL;

 clk_enable(lp->ether_clk);


 ctl = at91_emac_read(AT91_EMAC_CTL);
 at91_emac_write(AT91_EMAC_CTL, ctl | AT91_EMAC_CSR);


 update_mac_address(dev);


 enable_phyirq(dev);


 at91_emac_write(AT91_EMAC_IER, AT91_EMAC_RCOM | AT91_EMAC_RBNA
    | AT91_EMAC_TUND | AT91_EMAC_RTRY | AT91_EMAC_TCOM
    | AT91_EMAC_ROVR | AT91_EMAC_ABT);


 spin_lock_irq(&lp->lock);
 enable_mdi();
 update_linkspeed(dev, 0);
 disable_mdi();
 spin_unlock_irq(&lp->lock);

 at91ether_start(dev);
 netif_start_queue(dev);
 return 0;
}
