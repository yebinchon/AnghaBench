
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_cm_node {int list; } ;
struct list_head {int dummy; } ;
struct nes_cm_core {int ht_lock; int ht_node_cnt; struct list_head connected_nodes; } ;


 int EINVAL ;
 int NES_DBG_CM ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int nes_debug (int ,char*,struct nes_cm_node*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int add_hte_node(struct nes_cm_core *cm_core, struct nes_cm_node *cm_node)
{
 unsigned long flags;
 struct list_head *hte;

 if (!cm_node || !cm_core)
  return -EINVAL;

 nes_debug(NES_DBG_CM, "Adding Node %p to Active Connection HT\n",
    cm_node);

 spin_lock_irqsave(&cm_core->ht_lock, flags);


 hte = &cm_core->connected_nodes;
 list_add_tail(&cm_node->list, hte);
 atomic_inc(&cm_core->ht_node_cnt);

 spin_unlock_irqrestore(&cm_core->ht_lock, flags);

 return 0;
}
