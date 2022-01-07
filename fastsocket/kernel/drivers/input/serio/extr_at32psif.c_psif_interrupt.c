
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psif {int io; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OVRUN ;
 int PARITY ;
 unsigned long PSIF_BIT (int ) ;
 int RHR ;
 int RXRDY ;
 unsigned int SERIO_PARITY ;
 int SR ;
 int dev_err (int *,char*) ;
 unsigned long psif_readl (struct psif*,int ) ;
 int serio_interrupt (int ,unsigned char,unsigned int) ;

__attribute__((used)) static irqreturn_t psif_interrupt(int irq, void *_ptr)
{
 struct psif *psif = _ptr;
 int retval = IRQ_NONE;
 unsigned int io_flags = 0;
 unsigned long status;

 status = psif_readl(psif, SR);

 if (status & PSIF_BIT(RXRDY)) {
  unsigned char val = (unsigned char) psif_readl(psif, RHR);

  if (status & PSIF_BIT(PARITY))
   io_flags |= SERIO_PARITY;
  if (status & PSIF_BIT(OVRUN))
   dev_err(&psif->pdev->dev, "overrun read error\n");

  serio_interrupt(psif->io, val, io_flags);

  retval = IRQ_HANDLED;
 }

 return retval;
}
