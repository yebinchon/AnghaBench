
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_resend_irq (unsigned int) ;

__attribute__((used)) static int sn_msi_retrigger_irq(unsigned int irq)
{
 unsigned int vector = irq;
 ia64_resend_irq(vector);

 return 1;
}
