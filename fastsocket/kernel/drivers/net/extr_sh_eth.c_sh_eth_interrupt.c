
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_eth_private {int lock; struct sh_eth_cpu_data* cd; } ;
struct sh_eth_cpu_data {int tx_check; int eesr_err_check; } ;
struct net_device {int base_addr; } ;
typedef int irqreturn_t ;


 int EESR ;
 int EESR_CERF ;
 int EESR_FRC ;
 int EESR_PRE ;
 int EESR_RMAF ;
 int EESR_RRF ;
 int EESR_RTLF ;
 int EESR_RTSF ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ctrl_inl (int) ;
 int ctrl_outl (int,int) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int sh_eth_error (struct net_device*,int) ;
 int sh_eth_rx (struct net_device*) ;
 int sh_eth_txfree (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t sh_eth_interrupt(int irq, void *netdev)
{
 struct net_device *ndev = netdev;
 struct sh_eth_private *mdp = netdev_priv(ndev);
 struct sh_eth_cpu_data *cd = mdp->cd;
 irqreturn_t ret = IRQ_NONE;
 u32 ioaddr, intr_status = 0;

 ioaddr = ndev->base_addr;
 spin_lock(&mdp->lock);


 intr_status = ctrl_inl(ioaddr + EESR);

 if (intr_status & (EESR_FRC | EESR_RMAF | EESR_RRF |
   EESR_RTLF | EESR_RTSF | EESR_PRE | EESR_CERF |
   cd->tx_check | cd->eesr_err_check)) {
  ctrl_outl(intr_status, ioaddr + EESR);
  ret = IRQ_HANDLED;
 } else
  goto other_irq;

 if (intr_status & (EESR_FRC |
   EESR_RMAF |
   EESR_RRF |
   EESR_RTLF |
   EESR_RTSF |
   EESR_PRE |
   EESR_CERF)){
  sh_eth_rx(ndev);
 }


 if (intr_status & cd->tx_check) {
  sh_eth_txfree(ndev);
  netif_wake_queue(ndev);
 }

 if (intr_status & cd->eesr_err_check)
  sh_eth_error(ndev, intr_status);

other_irq:
 spin_unlock(&mdp->lock);

 return ret;
}
