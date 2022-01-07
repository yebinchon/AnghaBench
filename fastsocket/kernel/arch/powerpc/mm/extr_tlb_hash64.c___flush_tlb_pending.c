
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc64_tlb_batch {int index; int ssize; int psize; int * pte; int * vaddr; int mm; } ;
struct cpumask {int dummy; } ;


 scalar_t__ cpumask_equal (int ,struct cpumask const*) ;
 struct cpumask* cpumask_of (int ) ;
 int flush_hash_page (int ,int ,int ,int ,int) ;
 int flush_hash_range (int,int) ;
 int mm_cpumask (int ) ;
 int smp_processor_id () ;

void __flush_tlb_pending(struct ppc64_tlb_batch *batch)
{
 const struct cpumask *tmp;
 int i, local = 0;

 i = batch->index;
 tmp = cpumask_of(smp_processor_id());
 if (cpumask_equal(mm_cpumask(batch->mm), tmp))
  local = 1;
 if (i == 1)
  flush_hash_page(batch->vaddr[0], batch->pte[0],
    batch->psize, batch->ssize, local);
 else
  flush_hash_range(i, local);
 batch->index = 0;
}
