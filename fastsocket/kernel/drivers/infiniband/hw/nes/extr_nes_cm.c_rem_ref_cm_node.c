
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nes_qp {int ibqp; int * cm_node; } ;
struct nes_cm_node {struct nes_qp* nesqp; TYPE_4__* nesvnic; int loc_port; scalar_t__ apbvt_set; TYPE_5__* listener; scalar_t__ recv_entry; int send_entry; scalar_t__ accept_pend; int accelerated; TYPE_1__* cm_core; int list; int ref_count; } ;
struct nes_cm_core {int node_cnt; int ht_node_cnt; } ;
struct TYPE_10__ {int pend_accepts_cnt; } ;
struct TYPE_9__ {TYPE_3__* nesdev; } ;
struct TYPE_8__ {TYPE_2__* pcidev; } ;
struct TYPE_7__ {int devfn; } ;
struct TYPE_6__ {int ht_lock; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int NES_MANAGE_APBVT_DEL ;
 int PCI_FUNC (int ) ;
 int WARN_ON (int ) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int cm_nodes_destroyed ;
 int handle_recv_entry (struct nes_cm_node*,int ) ;
 int kfree (struct nes_cm_node*) ;
 int list_del (int *) ;
 int mini_cm_dec_refcnt_listen (struct nes_cm_core*,TYPE_5__*,int ) ;
 int nes_manage_apbvt (TYPE_4__*,int ,int ,int ) ;
 int nes_rem_ref (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rem_ref_cm_node(struct nes_cm_core *cm_core,
      struct nes_cm_node *cm_node)
{
 unsigned long flags;
 struct nes_qp *nesqp;

 if (!cm_node)
  return -EINVAL;

 spin_lock_irqsave(&cm_node->cm_core->ht_lock, flags);
 if (atomic_dec_return(&cm_node->ref_count)) {
  spin_unlock_irqrestore(&cm_node->cm_core->ht_lock, flags);
  return 0;
 }
 list_del(&cm_node->list);
 atomic_dec(&cm_core->ht_node_cnt);
 spin_unlock_irqrestore(&cm_node->cm_core->ht_lock, flags);


 if (!cm_node->accelerated && cm_node->accept_pend) {
  BUG_ON(!cm_node->listener);
  atomic_dec(&cm_node->listener->pend_accepts_cnt);
  BUG_ON(atomic_read(&cm_node->listener->pend_accepts_cnt) < 0);
 }
 WARN_ON(cm_node->send_entry);
 if (cm_node->recv_entry)
  handle_recv_entry(cm_node, 0);
 if (cm_node->listener) {
  mini_cm_dec_refcnt_listen(cm_core, cm_node->listener, 0);
 } else {
  if (cm_node->apbvt_set && cm_node->nesvnic) {
   nes_manage_apbvt(cm_node->nesvnic, cm_node->loc_port,
      PCI_FUNC(
       cm_node->nesvnic->nesdev->pcidev->devfn),
      NES_MANAGE_APBVT_DEL);
  }
 }

 atomic_dec(&cm_core->node_cnt);
 atomic_inc(&cm_nodes_destroyed);
 nesqp = cm_node->nesqp;
 if (nesqp) {
  nesqp->cm_node = ((void*)0);
  nes_rem_ref(&nesqp->ibqp);
  cm_node->nesqp = ((void*)0);
 }

 kfree(cm_node);
 return 0;
}
