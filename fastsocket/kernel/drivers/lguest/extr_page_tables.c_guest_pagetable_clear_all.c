
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_cpu {int lg; } ;


 int pin_stack_pages (struct lg_cpu*) ;
 int release_all_pagetables (int ) ;

void guest_pagetable_clear_all(struct lg_cpu *cpu)
{
 release_all_pagetables(cpu->lg);

 pin_stack_pages(cpu);
}
