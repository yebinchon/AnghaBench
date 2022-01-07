
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct lg_cpu {TYPE_2__* lg; } ;
typedef int pgd_t ;
struct TYPE_4__ {TYPE_1__* pgdirs; } ;
struct TYPE_3__ {int * pgdir; } ;


 unsigned int SWITCHER_PGD_INDEX ;
 int kill_guest (struct lg_cpu*,char*) ;
 unsigned int pgd_index (unsigned long) ;

__attribute__((used)) static pgd_t *spgd_addr(struct lg_cpu *cpu, u32 i, unsigned long vaddr)
{
 unsigned int index = pgd_index(vaddr);



 if (index >= SWITCHER_PGD_INDEX) {
  kill_guest(cpu, "attempt to access switcher pages");
  index = 0;
 }


 return &cpu->lg->pgdirs[i].pgdir[index];
}
