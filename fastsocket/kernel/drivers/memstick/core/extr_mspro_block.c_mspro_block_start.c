
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mspro_block_data {int q_lock; int queue; } ;
struct memstick_dev {int dummy; } ;


 int blk_start_queue (int ) ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mspro_block_start(struct memstick_dev *card)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 unsigned long flags;

 spin_lock_irqsave(&msb->q_lock, flags);
 blk_start_queue(msb->queue);
 spin_unlock_irqrestore(&msb->q_lock, flags);
}
