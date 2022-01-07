
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ARM_pc; } ;


 unsigned long volatile* IXP23XX_PCI_CMDSTAT ;
 unsigned long volatile* IXP23XX_PCI_CONTROL ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pci_master_aborts ;

int ixp23xx_pci_abort_handler(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
 volatile unsigned long temp;
 unsigned long flags;

 pci_master_aborts = 1;

 local_irq_save(flags);
 temp = *IXP23XX_PCI_CONTROL;




 if (temp & ((1 << 8) | (1 << 5)))
  *IXP23XX_PCI_CONTROL = temp;

 temp = *IXP23XX_PCI_CMDSTAT;

 if (temp & (1 << 29))
  *IXP23XX_PCI_CMDSTAT = temp;
 local_irq_restore(flags);





 if (fsr & (1 << 10))
  regs->ARM_pc += 4;

 return 0;
}
