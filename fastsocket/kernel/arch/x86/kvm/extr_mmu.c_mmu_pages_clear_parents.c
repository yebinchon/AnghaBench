
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_page_path {unsigned int* idx; struct kvm_mmu_page** parent; } ;
struct kvm_mmu_page {int unsync_child_bitmap; scalar_t__ unsync_children; } ;


 int PT64_ROOT_LEVEL ;
 int WARN_ON (int) ;
 int __clear_bit (unsigned int,int ) ;

__attribute__((used)) static void mmu_pages_clear_parents(struct mmu_page_path *parents)
{
 struct kvm_mmu_page *sp;
 unsigned int level = 0;

 do {
  unsigned int idx = parents->idx[level];

  sp = parents->parent[level];
  if (!sp)
   return;

  --sp->unsync_children;
  WARN_ON((int)sp->unsync_children < 0);
  __clear_bit(idx, sp->unsync_child_bitmap);
  level++;
 } while (level < PT64_ROOT_LEVEL-1 && !sp->unsync_children);
}
