
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int entry; } ;
struct binder_ref {struct binder_ref* death; TYPE_2__ work; int desc; int debug_id; TYPE_1__* proc; TYPE_3__* node; int node_entry; scalar_t__ strong; int rb_node_node; int rb_node_desc; } ;
struct TYPE_6__ {int debug_id; } ;
struct TYPE_4__ {int pid; int refs_by_node; int refs_by_desc; } ;


 int BINDER_DEBUG_DEAD_BINDER ;
 int BINDER_DEBUG_INTERNAL_REFS ;
 int BINDER_STAT_DEATH ;
 int BINDER_STAT_REF ;
 int binder_debug (int ,char*,int ,int ,int ,...) ;
 int binder_dec_node (TYPE_3__*,int,int) ;
 int binder_stats_deleted (int ) ;
 int hlist_del (int *) ;
 int kfree (struct binder_ref*) ;
 int list_del (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void binder_delete_ref(struct binder_ref *ref)
{
 binder_debug(BINDER_DEBUG_INTERNAL_REFS,
       "binder: %d delete ref %d desc %d for "
       "node %d\n", ref->proc->pid, ref->debug_id,
       ref->desc, ref->node->debug_id);

 rb_erase(&ref->rb_node_desc, &ref->proc->refs_by_desc);
 rb_erase(&ref->rb_node_node, &ref->proc->refs_by_node);
 if (ref->strong)
  binder_dec_node(ref->node, 1, 1);
 hlist_del(&ref->node_entry);
 binder_dec_node(ref->node, 0, 1);
 if (ref->death) {
  binder_debug(BINDER_DEBUG_DEAD_BINDER,
        "binder: %d delete ref %d desc %d "
        "has death notification\n", ref->proc->pid,
        ref->debug_id, ref->desc);
  list_del(&ref->death->work.entry);
  kfree(ref->death);
  binder_stats_deleted(BINDER_STAT_DEATH);
 }
 kfree(ref);
 binder_stats_deleted(BINDER_STAT_REF);
}
