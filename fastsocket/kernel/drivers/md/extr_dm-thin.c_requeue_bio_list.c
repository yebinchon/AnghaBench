
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int lock; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;


 int DM_ENDIO_REQUEUE ;
 int bio_endio (struct bio*,int ) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void requeue_bio_list(struct thin_c *tc, struct bio_list *master)
{
 struct bio *bio;
 struct bio_list bios;
 unsigned long flags;

 bio_list_init(&bios);

 spin_lock_irqsave(&tc->lock, flags);
 bio_list_merge(&bios, master);
 bio_list_init(master);
 spin_unlock_irqrestore(&tc->lock, flags);

 while ((bio = bio_list_pop(&bios)))
  bio_endio(bio, DM_ENDIO_REQUEUE);
}
