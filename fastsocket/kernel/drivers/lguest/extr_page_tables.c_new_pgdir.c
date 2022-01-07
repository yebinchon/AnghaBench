
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lg_cpu {unsigned int cpu_pgd; TYPE_1__* lg; } ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_4__ {unsigned long gpgdir; int * pgdir; } ;
struct TYPE_3__ {TYPE_2__* pgdirs; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int GFP_KERNEL ;
 int SWITCHER_PGD_INDEX ;
 int _PAGE_PRESENT ;
 int __pa (int *) ;
 int __pgd (int) ;
 int flush_user_mappings (TYPE_1__*,unsigned int) ;
 int free_page (long) ;
 scalar_t__ get_zeroed_page (int ) ;
 unsigned int random32 () ;
 int set_pgd (int *,int ) ;

__attribute__((used)) static unsigned int new_pgdir(struct lg_cpu *cpu,
         unsigned long gpgdir,
         int *blank_pgdir)
{
 unsigned int next;
 next = random32() % ARRAY_SIZE(cpu->lg->pgdirs);

 if (!cpu->lg->pgdirs[next].pgdir) {
  cpu->lg->pgdirs[next].pgdir =
     (pgd_t *)get_zeroed_page(GFP_KERNEL);

  if (!cpu->lg->pgdirs[next].pgdir)
   next = cpu->cpu_pgd;
  else {
   *blank_pgdir = 1;

  }
 }

 cpu->lg->pgdirs[next].gpgdir = gpgdir;

 flush_user_mappings(cpu->lg, next);

 return next;
}
