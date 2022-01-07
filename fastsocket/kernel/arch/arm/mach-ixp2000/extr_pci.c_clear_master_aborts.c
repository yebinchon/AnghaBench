
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int* IXP2000_PCI_CMDSTAT ;
 int* IXP2000_PCI_CONTROL ;
 int ixp2000_reg_wrb (int*,int volatile) ;
 int ixp2000_reg_write (int*,int volatile) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

int
clear_master_aborts(void)
{
 volatile u32 temp;
 unsigned long flags;

 local_irq_save(flags);
 temp = *(IXP2000_PCI_CONTROL);
 if (temp & ((1 << 8) | (1 << 5))) {
  ixp2000_reg_wrb(IXP2000_PCI_CONTROL, temp);
 }

 temp = *(IXP2000_PCI_CMDSTAT);
 if (temp & (1 << 29)) {
  while (temp & (1 << 29)) {
   ixp2000_reg_write(IXP2000_PCI_CMDSTAT, temp);
   temp = *(IXP2000_PCI_CMDSTAT);
  }
 }
 local_irq_restore(flags);

 return 0;
}
