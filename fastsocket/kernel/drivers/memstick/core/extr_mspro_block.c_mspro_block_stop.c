
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mspro_block_data {int q_lock; int queue; int has_request; } ;
struct memstick_dev {int mrq_complete; } ;


 int blk_stop_queue (int ) ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void mspro_block_stop(struct memstick_dev *card)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 int rc = 0;
 unsigned long flags;

 while (1) {
  spin_lock_irqsave(&msb->q_lock, flags);
  if (!msb->has_request) {
   blk_stop_queue(msb->queue);
   rc = 1;
  }
  spin_unlock_irqrestore(&msb->q_lock, flags);

  if (rc)
   break;

  wait_for_completion(&card->mrq_complete);
 }
}
