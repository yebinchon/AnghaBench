
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int IRQ_AMIGA_CIAA_FLG ;
 int disable_irq (int ) ;

__attribute__((used)) static void amiga_disable_irq(struct parport *p)
{
 disable_irq(IRQ_AMIGA_CIAA_FLG);
}
