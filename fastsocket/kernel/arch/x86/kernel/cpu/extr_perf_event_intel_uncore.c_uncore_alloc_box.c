
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore_type {int num_shared_regs; } ;
struct intel_uncore_extra_reg {int dummy; } ;
struct intel_uncore_box {int cpu; int phys_id; int refcnt; TYPE_1__* shared_regs; } ;
struct TYPE_2__ {int lock; } ;


 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int atomic_set (int *,int) ;
 int cpu_to_node (int) ;
 struct intel_uncore_box* kmalloc_node (int,int,int ) ;
 int spin_lock_init (int *) ;
 int uncore_pmu_init_hrtimer (struct intel_uncore_box*) ;

struct intel_uncore_box *uncore_alloc_box(struct intel_uncore_type *type, int cpu)
{
 struct intel_uncore_box *box;
 int i, size;

 size = sizeof(*box) + type->num_shared_regs * sizeof(struct intel_uncore_extra_reg);

 box = kmalloc_node(size, GFP_KERNEL | __GFP_ZERO, cpu_to_node(cpu));
 if (!box)
  return ((void*)0);

 for (i = 0; i < type->num_shared_regs; i++)
  spin_lock_init(&box->shared_regs[i].lock);

 uncore_pmu_init_hrtimer(box);
 atomic_set(&box->refcnt, 1);
 box->cpu = -1;
 box->phys_id = -1;

 return box;
}
