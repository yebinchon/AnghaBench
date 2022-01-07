
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __m68k_handle_int (unsigned int,struct pt_regs*) ;
 int* sun3_intreg ;

__attribute__((used)) static void sun3_inthandle(unsigned int irq, struct pt_regs *fp)
{
        *sun3_intreg &= ~(1 << irq);

 __m68k_handle_int(irq, fp);
}
