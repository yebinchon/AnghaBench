
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
union tl_entry {int nl; int cpu; TYPE_1__ container; } ;
struct tl_info {scalar_t__ length; union tl_entry* tle; } ;
struct mask_info {int id; struct mask_info* next; } ;


 int add_cpus_to_mask (int *,struct mask_info*,struct mask_info*) ;
 struct mask_info book_info ;
 int clear_masks () ;
 struct mask_info core_info ;
 int machine_has_topology ;
 union tl_entry* next_tle (union tl_entry*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int topology_lock ;

__attribute__((used)) static void tl_to_cores(struct tl_info *info)
{



 struct mask_info *book = ((void*)0);

 struct mask_info *core = &core_info;
 union tl_entry *tle, *end;


 spin_lock_irq(&topology_lock);
 clear_masks();
 tle = info->tle;
 end = (union tl_entry *)((unsigned long)info + info->length);
 while (tle < end) {
  switch (tle->nl) {






  case 1:
   core = core->next;
   core->id = tle->container.id;
   break;
  case 0:
   add_cpus_to_mask(&tle->cpu, book, core);
   break;
  default:
   clear_masks();
   machine_has_topology = 0;
   goto out;
  }
  tle = next_tle(tle);
 }
out:
 spin_unlock_irq(&topology_lock);
}
