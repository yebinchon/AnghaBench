
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_cpu {int esp1; TYPE_1__* lg; } ;
struct TYPE_2__ {unsigned int stack_pages; } ;


 unsigned int PAGE_SIZE ;
 int pin_page (struct lg_cpu*,int) ;

void pin_stack_pages(struct lg_cpu *cpu)
{
 unsigned int i;





 for (i = 0; i < cpu->lg->stack_pages; i++)






  pin_page(cpu, cpu->esp1 - 1 - i * PAGE_SIZE);
}
