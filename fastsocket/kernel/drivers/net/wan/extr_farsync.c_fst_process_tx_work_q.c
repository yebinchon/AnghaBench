
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int DBG_TX ;
 int FST_MAX_CARDS ;
 int dbg (int ,char*,...) ;
 int do_bottom_half_tx (int *) ;
 int ** fst_card_array ;
 int fst_work_q_lock ;
 int fst_work_txq ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
fst_process_tx_work_q(unsigned long work_q)
{
 unsigned long flags;
 u64 work_txq;
 int i;




 dbg(DBG_TX, "fst_process_tx_work_q\n");
 spin_lock_irqsave(&fst_work_q_lock, flags);
 work_txq = fst_work_txq;
 fst_work_txq = 0;
 spin_unlock_irqrestore(&fst_work_q_lock, flags);




 for (i = 0; i < FST_MAX_CARDS; i++) {
  if (work_txq & 0x01) {
   if (fst_card_array[i] != ((void*)0)) {
    dbg(DBG_TX, "Calling tx bh for card %d\n", i);
    do_bottom_half_tx(fst_card_array[i]);
   }
  }
  work_txq = work_txq >> 1;
 }
}
