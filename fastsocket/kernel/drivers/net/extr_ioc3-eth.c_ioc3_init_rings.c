
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {int rx_ci; int rx_pi; int tx_pi; int tx_ci; scalar_t__ txqlen; int txr; int rxr; struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;


 int ERPIR_ARM ;
 int ioc3_alloc_rings (struct net_device*) ;
 int ioc3_clean_rx_ring (struct ioc3_private*) ;
 int ioc3_clean_tx_ring (struct ioc3_private*) ;
 int ioc3_free_rings (struct ioc3_private*) ;
 unsigned long ioc3_map (int ,int ) ;
 int ioc3_r_etcir () ;
 int ioc3_w_erbr_h (unsigned long) ;
 int ioc3_w_erbr_l (unsigned long) ;
 int ioc3_w_ercir (int) ;
 int ioc3_w_erpir (int) ;
 int ioc3_w_etbr_h (unsigned long) ;
 int ioc3_w_etbr_l (unsigned long) ;
 int ioc3_w_etcir (int) ;
 int ioc3_w_etpir (int) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ioc3_init_rings(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3 *ioc3 = ip->regs;
 unsigned long ring;

 ioc3_free_rings(ip);
 ioc3_alloc_rings(dev);

 ioc3_clean_rx_ring(ip);
 ioc3_clean_tx_ring(ip);


 ring = ioc3_map(ip->rxr, 0);
 ioc3_w_erbr_h(ring >> 32);
 ioc3_w_erbr_l(ring & 0xffffffff);
 ioc3_w_ercir(ip->rx_ci << 3);
 ioc3_w_erpir((ip->rx_pi << 3) | ERPIR_ARM);

 ring = ioc3_map(ip->txr, 0);

 ip->txqlen = 0;


 ioc3_w_etbr_h(ring >> 32);
 ioc3_w_etbr_l(ring & 0xffffffff);
 ioc3_w_etpir(ip->tx_pi << 7);
 ioc3_w_etcir(ip->tx_ci << 7);
 (void) ioc3_r_etcir();
}
