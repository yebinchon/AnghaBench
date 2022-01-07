
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sun4c_mmu_entry {int vaddr; } ;
struct TYPE_6__ {struct sun4c_mmu_entry* prev; } ;
struct TYPE_9__ {TYPE_1__ ringhd; } ;
struct TYPE_7__ {struct sun4c_mmu_entry* next; } ;
struct TYPE_8__ {TYPE_2__ ringhd; scalar_t__ num_entries; } ;


 int free_kernel_entry (struct sun4c_mmu_entry*,TYPE_4__*) ;
 int sun4c_flush_segment (int ) ;
 TYPE_4__ sun4c_kernel_ring ;
 int sun4c_kernel_unmap (struct sun4c_mmu_entry*) ;
 TYPE_3__ sun4c_kfree_ring ;

__attribute__((used)) static struct sun4c_mmu_entry *sun4c_kernel_strategy(void)
{
 struct sun4c_mmu_entry *this_entry;


 if (sun4c_kfree_ring.num_entries) {
  this_entry = sun4c_kfree_ring.ringhd.next;
  return this_entry;
 }


 this_entry = sun4c_kernel_ring.ringhd.prev;
 sun4c_flush_segment(this_entry->vaddr);
 sun4c_kernel_unmap(this_entry);
 free_kernel_entry(this_entry, &sun4c_kernel_ring);
 this_entry = sun4c_kfree_ring.ringhd.next;

 return this_entry;
}
