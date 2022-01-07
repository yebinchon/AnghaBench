
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int irqreturn_t ;
typedef int byte ;


 int IRQ_HANDLED ;
 int RXGOOD ;
 int R_STS ;
 int TXBF0 ;
 int TXBF1 ;
 int de620_get_register (struct net_device*,int ) ;
 int de620_lock ;
 int de620_rx_intr (struct net_device*) ;
 int de620_tx_buffs (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pr_debug (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t
de620_interrupt(int irq_in, void *dev_id)
{
 struct net_device *dev = dev_id;
 byte irq_status;
 int bogus_count = 0;
 int again = 0;

 spin_lock(&de620_lock);


 irq_status = de620_get_register(dev, R_STS);

 pr_debug("de620_interrupt (%2.2X)\n", irq_status);

 if (irq_status & RXGOOD) {
  do {
   again = de620_rx_intr(dev);
   pr_debug("again=%d\n", again);
  }
  while (again && (++bogus_count < 100));
 }

 if(de620_tx_buffs(dev) != (TXBF0 | TXBF1))
  netif_wake_queue(dev);

 spin_unlock(&de620_lock);
 return IRQ_HANDLED;
}
