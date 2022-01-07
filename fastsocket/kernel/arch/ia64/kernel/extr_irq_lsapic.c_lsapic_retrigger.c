
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_resend_irq (unsigned int) ;

__attribute__((used)) static int lsapic_retrigger(unsigned int irq)
{
 ia64_resend_irq(irq);

 return 1;
}
