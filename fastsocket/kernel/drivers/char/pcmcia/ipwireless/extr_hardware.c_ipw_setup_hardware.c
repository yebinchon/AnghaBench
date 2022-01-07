
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_hardware {scalar_t__ hw_version; int lock; TYPE_1__* memregs_CCR; scalar_t__ base_port; } ;
struct TYPE_2__ {int reg_config_and_status; } ;


 int DCR_RXRESET ;
 int DCR_TXRESET ;
 scalar_t__ HW_VERSION_1 ;
 int IER_RXENABLED ;
 int IER_TXENABLED ;
 scalar_t__ IODCR ;
 scalar_t__ IOIER ;
 int outw (int,scalar_t__) ;
 unsigned short readw (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (unsigned short,int *) ;

__attribute__((used)) static void ipw_setup_hardware(struct ipw_hardware *hw)
{
 unsigned long flags;

 spin_lock_irqsave(&hw->lock, flags);
 if (hw->hw_version == HW_VERSION_1) {

  outw(DCR_RXRESET, hw->base_port + IODCR);

  outw(DCR_TXRESET, hw->base_port + IODCR);


  outw(IER_TXENABLED | IER_RXENABLED, hw->base_port + IOIER);
 } else {




  unsigned short csr = readw(&hw->memregs_CCR->reg_config_and_status);

  csr |= 1;
  writew(csr, &hw->memregs_CCR->reg_config_and_status);
 }
 spin_unlock_irqrestore(&hw->lock, flags);
}
