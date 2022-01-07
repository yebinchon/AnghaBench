
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int read_ptr; } ;
struct iwl_txq {TYPE_1__* entries; int lock; TYPE_2__ q; struct iwl_tfd* tfds; } ;
struct iwl_trans {int op_mode; } ;
struct iwl_tfd {int dummy; } ;
struct TYPE_3__ {struct sk_buff* skb; int meta; } ;


 int get_cmd_index (TYPE_2__*,int) ;
 int iwl_op_mode_free_skb (int ,struct sk_buff*) ;
 int iwl_pcie_tfd_unmap (struct iwl_trans*,int *,struct iwl_tfd*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_pcie_txq_free_tfd(struct iwl_trans *trans, struct iwl_txq *txq)
{
 struct iwl_tfd *tfd_tmp = txq->tfds;


 int rd_ptr = txq->q.read_ptr;
 int idx = get_cmd_index(&txq->q, rd_ptr);

 lockdep_assert_held(&txq->lock);


 iwl_pcie_tfd_unmap(trans, &txq->entries[idx].meta, &tfd_tmp[rd_ptr]);


 if (txq->entries) {
  struct sk_buff *skb;

  skb = txq->entries[idx].skb;





  if (skb) {
   iwl_op_mode_free_skb(trans->op_mode, skb);
   txq->entries[idx].skb = ((void*)0);
  }
 }
}
