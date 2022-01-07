
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __m68k_handle_int (unsigned int,struct pt_regs*) ;
 scalar_t__ pica ;
 scalar_t__ picb ;

void dn_process_int(unsigned int irq, struct pt_regs *fp)
{
 __m68k_handle_int(irq, fp);

 *(volatile unsigned char *)(pica)=0x20;
 *(volatile unsigned char *)(picb)=0x20;
}
