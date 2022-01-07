
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lg_cpu {size_t cpu_pgd; TYPE_2__* lg; } ;
typedef int pgd_t ;
struct TYPE_4__ {TYPE_1__* pgdirs; } ;
struct TYPE_3__ {unsigned long gpgdir; } ;


 unsigned long PGDIR_SHIFT ;

__attribute__((used)) static unsigned long gpgd_addr(struct lg_cpu *cpu, unsigned long vaddr)
{
 unsigned int index = vaddr >> (PGDIR_SHIFT);
 return cpu->lg->pgdirs[cpu->cpu_pgd].gpgdir + index * sizeof(pgd_t);
}
