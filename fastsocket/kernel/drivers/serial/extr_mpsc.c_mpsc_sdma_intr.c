
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int line; int lock; } ;
struct mpsc_port_info {TYPE_1__ port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ mpsc_rx_intr (struct mpsc_port_info*) ;
 int mpsc_sdma_intr_ack (struct mpsc_port_info*) ;
 scalar_t__ mpsc_tx_intr (struct mpsc_port_info*) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static irqreturn_t mpsc_sdma_intr(int irq, void *dev_id)
{
 struct mpsc_port_info *pi = dev_id;
 ulong iflags;
 int rc = IRQ_NONE;

 pr_debug("mpsc_sdma_intr[%d]: SDMA Interrupt Received\n",pi->port.line);

 spin_lock_irqsave(&pi->port.lock, iflags);
 mpsc_sdma_intr_ack(pi);
 if (mpsc_rx_intr(pi))
  rc = IRQ_HANDLED;
 if (mpsc_tx_intr(pi))
  rc = IRQ_HANDLED;
 spin_unlock_irqrestore(&pi->port.lock, iflags);

 pr_debug("mpsc_sdma_intr[%d]: SDMA Interrupt Handled\n", pi->port.line);
 return rc;
}
