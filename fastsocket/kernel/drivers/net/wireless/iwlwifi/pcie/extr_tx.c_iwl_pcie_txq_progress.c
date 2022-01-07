
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ read_ptr; scalar_t__ write_ptr; } ;
struct iwl_txq {int stuck_timer; TYPE_1__ q; } ;
struct iwl_trans_pcie {scalar_t__ wd_timeout; } ;


 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static inline void iwl_pcie_txq_progress(struct iwl_trans_pcie *trans_pcie,
        struct iwl_txq *txq)
{
 if (!trans_pcie->wd_timeout)
  return;





 if (txq->q.read_ptr == txq->q.write_ptr)
  del_timer(&txq->stuck_timer);
 else
  mod_timer(&txq->stuck_timer, jiffies + trans_pcie->wd_timeout);
}
