
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; } ;
struct binder_node {int debug_id; int dead_node; TYPE_2__* proc; int rb_node; TYPE_1__ work; scalar_t__ local_weak_refs; scalar_t__ local_strong_refs; int refs; scalar_t__ has_weak_ref; scalar_t__ has_strong_ref; scalar_t__ internal_strong_refs; } ;
struct TYPE_4__ {int nodes; int wait; int todo; } ;


 int BINDER_DEBUG_INTERNAL_REFS ;
 int BINDER_STAT_NODE ;
 int binder_debug (int ,char*,int ) ;
 int binder_stats_deleted (int ) ;
 int hlist_del (int *) ;
 scalar_t__ hlist_empty (int *) ;
 int kfree (struct binder_node*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int rb_erase (int *,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int binder_dec_node(struct binder_node *node, int strong, int internal)
{
 if (strong) {
  if (internal)
   node->internal_strong_refs--;
  else
   node->local_strong_refs--;
  if (node->local_strong_refs || node->internal_strong_refs)
   return 0;
 } else {
  if (!internal)
   node->local_weak_refs--;
  if (node->local_weak_refs || !hlist_empty(&node->refs))
   return 0;
 }
 if (node->proc && (node->has_strong_ref || node->has_weak_ref)) {
  if (list_empty(&node->work.entry)) {
   list_add_tail(&node->work.entry, &node->proc->todo);
   wake_up_interruptible(&node->proc->wait);
  }
 } else {
  if (hlist_empty(&node->refs) && !node->local_strong_refs &&
      !node->local_weak_refs) {
   list_del_init(&node->work.entry);
   if (node->proc) {
    rb_erase(&node->rb_node, &node->proc->nodes);
    binder_debug(BINDER_DEBUG_INTERNAL_REFS,
          "binder: refless node %d deleted\n",
          node->debug_id);
   } else {
    hlist_del(&node->dead_node);
    binder_debug(BINDER_DEBUG_INTERNAL_REFS,
          "binder: dead node %d deleted\n",
          node->debug_id);
   }
   kfree(node);
   binder_stats_deleted(BINDER_STAT_NODE);
  }
 }

 return 0;
}
