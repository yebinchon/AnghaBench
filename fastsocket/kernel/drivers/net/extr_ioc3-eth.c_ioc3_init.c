
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {int emcr; int ehar_l; int ehar_h; int ioc3_timer; struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;


 int EISR_RXBUFOFLO ;
 int EISR_RXMEMERR ;
 int EISR_RXOFLO ;
 int EISR_RXPARERR ;
 int EISR_RXTIMERINT ;
 int EISR_TXBUFUFLO ;
 int EISR_TXEXPLICIT ;
 int EISR_TXMEMERR ;
 int EMCR_PADEN ;
 int EMCR_RST ;
 int EMCR_RXDMAEN ;
 int EMCR_RXEN ;
 int EMCR_RXOFF_SHIFT ;
 int EMCR_TXDMAEN ;
 int EMCR_TXEN ;
 int PCI64_ATTR_BAR ;
 int RX_OFFSET ;
 int __ioc3_set_mac_address (struct net_device*) ;
 int del_timer_sync (int *) ;
 int ioc3_init_rings (struct net_device*) ;
 int ioc3_r_eier () ;
 int ioc3_r_emcr () ;
 int ioc3_r_etcdc () ;
 int ioc3_w_ehar_h (int ) ;
 int ioc3_w_ehar_l (int ) ;
 int ioc3_w_eier (int) ;
 int ioc3_w_emcr (int) ;
 int ioc3_w_erbar (int) ;
 int ioc3_w_ercsr (int) ;
 int ioc3_w_ersr (int) ;
 int ioc3_w_ertr (int ) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static void ioc3_init(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3 *ioc3 = ip->regs;

 del_timer_sync(&ip->ioc3_timer);

 ioc3_w_emcr(EMCR_RST);
 (void) ioc3_r_emcr();
 udelay(4);
 ioc3_w_emcr(0);
 (void) ioc3_r_emcr();





 ioc3_w_erbar(0);

 (void) ioc3_r_etcdc();
 ioc3_w_ercsr(15);
 ioc3_w_ertr(0);
 __ioc3_set_mac_address(dev);
 ioc3_w_ehar_h(ip->ehar_h);
 ioc3_w_ehar_l(ip->ehar_l);
 ioc3_w_ersr(42);

 ioc3_init_rings(dev);

 ip->emcr |= ((RX_OFFSET / 2) << EMCR_RXOFF_SHIFT) | EMCR_TXDMAEN |
              EMCR_TXEN | EMCR_RXDMAEN | EMCR_RXEN | EMCR_PADEN;
 ioc3_w_emcr(ip->emcr);
 ioc3_w_eier(EISR_RXTIMERINT | EISR_RXOFLO | EISR_RXBUFOFLO |
             EISR_RXMEMERR | EISR_RXPARERR | EISR_TXBUFUFLO |
             EISR_TXEXPLICIT | EISR_TXMEMERR);
 (void) ioc3_r_eier();
}
