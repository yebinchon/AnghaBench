
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lg_cpu {TYPE_1__* lg; } ;
typedef int pte_t ;
struct TYPE_4__ {scalar_t__ pgdir; } ;
struct TYPE_3__ {unsigned long kernel_address; TYPE_2__* pgdirs; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int do_set_pte (struct lg_cpu*,int,unsigned long,int ) ;
 int find_pgdir (TYPE_1__*,unsigned long) ;

void guest_set_pte(struct lg_cpu *cpu,
     unsigned long gpgdir, unsigned long vaddr, pte_t gpte)
{




 if (vaddr >= cpu->lg->kernel_address) {
  unsigned int i;
  for (i = 0; i < ARRAY_SIZE(cpu->lg->pgdirs); i++)
   if (cpu->lg->pgdirs[i].pgdir)
    do_set_pte(cpu, i, vaddr, gpte);
 } else {

  int pgdir = find_pgdir(cpu->lg, gpgdir);
  if (pgdir != ARRAY_SIZE(cpu->lg->pgdirs))

   do_set_pte(cpu, pgdir, vaddr, gpte);
 }
}
