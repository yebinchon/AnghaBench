
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ head; } ;
struct r10conf {int device_lock; int wait_barrier; TYPE_1__* mddev; scalar_t__ pending_count; int plug; TYPE_2__ pending_bio_list; } ;
struct bio {int bi_rw; int bi_bdev; struct bio* bi_next; } ;
struct TYPE_3__ {int bitmap; } ;


 int BIO_DISCARD ;
 int bdev_get_queue (int ) ;
 int bio_endio (struct bio*,int ) ;
 struct bio* bio_list_get (TYPE_2__*) ;
 int bitmap_unplug (int ) ;
 int blk_queue_discard (int ) ;
 int generic_make_request (struct bio*) ;
 int plugger_remove_plug (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static int flush_pending_writes(struct r10conf *conf)
{




 int rv = 0;

 spin_lock_irq(&conf->device_lock);

 if (conf->pending_bio_list.head) {
  struct bio *bio;
  bio = bio_list_get(&conf->pending_bio_list);
  plugger_remove_plug(&conf->plug);
  conf->pending_count = 0;
  spin_unlock_irq(&conf->device_lock);


  bitmap_unplug(conf->mddev->bitmap);
  wake_up(&conf->wait_barrier);

  while (bio) {
   struct bio *next = bio->bi_next;
   bio->bi_next = ((void*)0);
   if (unlikely((bio->bi_rw & BIO_DISCARD) &&
       !blk_queue_discard(bdev_get_queue(bio->bi_bdev))))

    bio_endio(bio, 0);
   else
    generic_make_request(bio);
   bio = next;
  }
  rv = 1;
 } else
  spin_unlock_irq(&conf->device_lock);
 return rv;
}
