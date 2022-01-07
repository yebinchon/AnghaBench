
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int fst_work_q_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
fst_q_work_item(u64 * queue, int card_index)
{
 unsigned long flags;
 u64 mask;




 spin_lock_irqsave(&fst_work_q_lock, flags);







 mask = 1 << card_index;
 *queue |= mask;
 spin_unlock_irqrestore(&fst_work_q_lock, flags);
}
