
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct cardinfo* queuedata; } ;
struct cardinfo {int lock; struct bio** biotail; } ;
struct bio {struct bio* bi_next; int bi_size; scalar_t__ bi_sector; } ;


 int blk_plug_device (struct request_queue*) ;
 int pr_debug (char*,unsigned long long,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int mm_make_request(struct request_queue *q, struct bio *bio)
{
 struct cardinfo *card = q->queuedata;
 pr_debug("mm_make_request %llu %u\n",
   (unsigned long long)bio->bi_sector, bio->bi_size);

 spin_lock_irq(&card->lock);
 *card->biotail = bio;
 bio->bi_next = ((void*)0);
 card->biotail = &bio->bi_next;
 blk_plug_device(q);
 spin_unlock_irq(&card->lock);

 return 0;
}
