
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sun4c_mmu_entry {int dummy; } ;
struct TYPE_4__ {struct sun4c_mmu_entry* next; } ;
struct TYPE_5__ {TYPE_1__ ringhd; scalar_t__ num_entries; } ;


 int add_ring (int *,struct sun4c_mmu_entry*) ;
 scalar_t__ max_user_taken_entries ;
 int remove_ring (TYPE_2__*,struct sun4c_mmu_entry*) ;
 int sun4c_kfree_ring ;
 TYPE_2__ sun4c_ufree_ring ;
 scalar_t__ sun4c_user_taken_entries ;

void sun4c_grow_kernel_ring(void)
{
 struct sun4c_mmu_entry *entry;


 if (sun4c_user_taken_entries >= max_user_taken_entries)
  return;

 if (sun4c_ufree_ring.num_entries) {
  entry = sun4c_ufree_ring.ringhd.next;
         remove_ring(&sun4c_ufree_ring, entry);
  add_ring(&sun4c_kfree_ring, entry);
  sun4c_user_taken_entries++;
 }
}
