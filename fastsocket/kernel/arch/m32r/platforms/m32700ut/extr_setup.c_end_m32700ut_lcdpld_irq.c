
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M32R_IRQ_INT2 ;
 int enable_m32700ut_lcdpld_irq (unsigned int) ;
 int end_m32700ut_irq (int ) ;

__attribute__((used)) static void end_m32700ut_lcdpld_irq(unsigned int irq)
{
 enable_m32700ut_lcdpld_irq(irq);
 end_m32700ut_irq(M32R_IRQ_INT2);
}
