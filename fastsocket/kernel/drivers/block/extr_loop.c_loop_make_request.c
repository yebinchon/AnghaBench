
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct loop_device* queuedata; } ;
struct loop_device {scalar_t__ lo_state; int lo_flags; int lo_lock; int lo_event; } ;
struct bio {int dummy; } ;


 int BUG_ON (int) ;
 int LO_FLAGS_READ_ONLY ;
 scalar_t__ Lo_bound ;
 int READ ;
 int READA ;
 int WRITE ;
 int bio_io_error (struct bio*) ;
 int bio_rw (struct bio*) ;
 int loop_add_bio (struct loop_device*,struct bio*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static int loop_make_request(struct request_queue *q, struct bio *old_bio)
{
 struct loop_device *lo = q->queuedata;
 int rw = bio_rw(old_bio);

 if (rw == READA)
  rw = READ;

 BUG_ON(!lo || (rw != READ && rw != WRITE));

 spin_lock_irq(&lo->lo_lock);
 if (lo->lo_state != Lo_bound)
  goto out;
 if (unlikely(rw == WRITE && (lo->lo_flags & LO_FLAGS_READ_ONLY)))
  goto out;
 loop_add_bio(lo, old_bio);
 wake_up(&lo->lo_event);
 spin_unlock_irq(&lo->lo_lock);
 return 0;

out:
 spin_unlock_irq(&lo->lo_lock);
 bio_io_error(old_bio);
 return 0;
}
