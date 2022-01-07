
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RX_BUSY ;
 int RX_ENABLE ;
 int RX_GOOD ;
 scalar_t__ TX_PAGES ;
 int de600_lock ;
 int de600_put_command (int ) ;
 int de600_read_status (struct net_device*) ;
 int de600_rx_intr (struct net_device*) ;
 int de600_tx_intr (struct net_device*,int) ;
 scalar_t__ free_tx_pages ;
 int pr_debug (char*,int) ;
 int select_nic () ;
 int select_prn () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trigger_interrupt (struct net_device*) ;

__attribute__((used)) static irqreturn_t de600_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 u8 irq_status;
 int retrig = 0;
 int boguscount = 0;

 spin_lock(&de600_lock);

 select_nic();
 irq_status = de600_read_status(dev);

 do {
  pr_debug("de600_interrupt (%02X)\n", irq_status);

  if (irq_status & RX_GOOD)
   de600_rx_intr(dev);
  else if (!(irq_status & RX_BUSY))
   de600_put_command(RX_ENABLE);


  if (free_tx_pages < TX_PAGES)
   retrig = de600_tx_intr(dev, irq_status);
  else
   retrig = 0;

  irq_status = de600_read_status(dev);
 } while ( (irq_status & RX_GOOD) || ((++boguscount < 100) && retrig) );







 select_prn();
 if (retrig)
  trigger_interrupt(dev);
 spin_unlock(&de600_lock);
 return IRQ_HANDLED;
}
