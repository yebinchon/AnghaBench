
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int volatile* IXP23XX_PCI_CMDSTAT ;
 int volatile* IXP23XX_PCI_CONTROL ;

int clear_master_aborts(void)
{
 volatile u32 temp;

 temp = *IXP23XX_PCI_CONTROL;




 if (temp & ((1 << 8) | (1 << 5)))
  *IXP23XX_PCI_CONTROL = temp;

 temp = *IXP23XX_PCI_CMDSTAT;

 if (temp & (1 << 29))
  *IXP23XX_PCI_CMDSTAT = temp;

 return 0;
}
