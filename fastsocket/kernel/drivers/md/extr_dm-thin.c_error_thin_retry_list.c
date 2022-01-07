
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {int dummy; } ;
struct thin_c {int lock; struct bio_list retry_on_resume_list; } ;
struct bio {int dummy; } ;


 int bio_io_error (struct bio*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void error_thin_retry_list(struct thin_c *tc)
{
 struct bio *bio;
 unsigned long flags;
 struct bio_list bios;

 bio_list_init(&bios);

 spin_lock_irqsave(&tc->lock, flags);
 bio_list_merge(&bios, &tc->retry_on_resume_list);
 bio_list_init(&tc->retry_on_resume_list);
 spin_unlock_irqrestore(&tc->lock, flags);

 while ((bio = bio_list_pop(&bios)))
  bio_io_error(bio);
}
