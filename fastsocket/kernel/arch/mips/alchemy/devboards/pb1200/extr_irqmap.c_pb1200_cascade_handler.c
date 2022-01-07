
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int dummy; } ;
struct TYPE_2__ {unsigned short int_status; } ;


 scalar_t__ PB1200_INT_BEGIN ;
 scalar_t__ __ffs (unsigned short) ;
 TYPE_1__* bcsr ;
 int generic_handle_irq (scalar_t__) ;

__attribute__((used)) static void pb1200_cascade_handler(unsigned int irq, struct irq_desc *d)
{
 unsigned short bisr = bcsr->int_status;

 for ( ; bisr; bisr &= bisr - 1)
  generic_handle_irq(PB1200_INT_BEGIN + __ffs(bisr));
}
