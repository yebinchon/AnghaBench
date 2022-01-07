
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_cpu {int cpu_pgd; TYPE_1__* lg; } ;
struct TYPE_2__ {int pgdirs; } ;


 int ARRAY_SIZE (int ) ;
 int find_pgdir (TYPE_1__*,unsigned long) ;
 int new_pgdir (struct lg_cpu*,unsigned long,int*) ;
 int pin_stack_pages (struct lg_cpu*) ;

void guest_new_pagetable(struct lg_cpu *cpu, unsigned long pgtable)
{
 int newpgdir, repin = 0;


 newpgdir = find_pgdir(cpu->lg, pgtable);




 if (newpgdir == ARRAY_SIZE(cpu->lg->pgdirs))
  newpgdir = new_pgdir(cpu, pgtable, &repin);

 cpu->cpu_pgd = newpgdir;

 if (repin)
  pin_stack_pages(cpu);
}
