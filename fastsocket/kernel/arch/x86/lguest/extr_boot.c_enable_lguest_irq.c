
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blocked_interrupts; } ;


 int clear_bit (unsigned int,int ) ;
 TYPE_1__ lguest_data ;

__attribute__((used)) static void enable_lguest_irq(unsigned int irq)
{
 clear_bit(irq, lguest_data.blocked_interrupts);
}
