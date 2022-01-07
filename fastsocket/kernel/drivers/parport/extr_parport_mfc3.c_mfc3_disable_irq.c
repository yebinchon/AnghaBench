
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct TYPE_2__ {int crb; } ;


 int PIA_C1_ENABLE_IRQ ;
 TYPE_1__* pia (struct parport*) ;

__attribute__((used)) static void mfc3_disable_irq(struct parport *p)
{
 pia(p)->crb &= ~PIA_C1_ENABLE_IRQ;
}
