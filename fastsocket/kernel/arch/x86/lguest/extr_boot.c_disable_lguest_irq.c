
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blocked_interrupts; } ;


 TYPE_1__ lguest_data ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static void disable_lguest_irq(unsigned int irq)
{
 set_bit(irq, lguest_data.blocked_interrupts);
}
