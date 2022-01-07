
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intclr_mask; int intclr; int int_status; } ;


 unsigned int PB1200_INT_BEGIN ;
 int au_sync () ;
 TYPE_1__* bcsr ;

__attribute__((used)) static void pb1200_maskack_irq(unsigned int irq_nr)
{
 bcsr->intclr_mask = 1 << (irq_nr - PB1200_INT_BEGIN);
 bcsr->intclr = 1 << (irq_nr - PB1200_INT_BEGIN);
 bcsr->int_status = 1 << (irq_nr - PB1200_INT_BEGIN);
 au_sync();
}
