
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct cardinfo* queuedata; } ;
struct cardinfo {int lock; } ;


 int activate (struct cardinfo*) ;
 scalar_t__ blk_remove_plug (struct request_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mm_unplug_device(struct request_queue *q)
{
 struct cardinfo *card = q->queuedata;
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);
 if (blk_remove_plug(q))
  activate(card);
 spin_unlock_irqrestore(&card->lock, flags);
}
