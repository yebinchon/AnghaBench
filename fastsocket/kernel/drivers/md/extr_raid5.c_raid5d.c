
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {scalar_t__ seq_flush; scalar_t__ seq_write; int device_lock; } ;
struct mddev {int flags; int bitmap; struct r5conf* private; } ;
struct md_thread {struct mddev* mddev; } ;
struct bio {int dummy; } ;


 int MD_CHANGE_PENDING ;
 int activate_bit_delay (struct r5conf*) ;
 int async_tx_issue_pending_all () ;
 int bitmap_unplug (int ) ;
 int handle_active_stripes (struct r5conf*) ;
 int md_check_recovery (struct mddev*) ;
 int pr_debug (char*,...) ;
 struct bio* remove_bio_from_retry (struct r5conf*) ;
 int retry_aligned_read (struct r5conf*,struct bio*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int unplug_slaves (struct mddev*) ;

__attribute__((used)) static void raid5d(struct md_thread *thread)
{
 struct mddev *mddev = thread->mddev;
 struct r5conf *conf = mddev->private;
 int handled;

 pr_debug("+++ raid5d active\n");

 md_check_recovery(mddev);

 handled = 0;
 spin_lock_irq(&conf->device_lock);
 while (1) {
  struct bio *bio;
  int batch_size;

  if (conf->seq_flush != conf->seq_write) {
   int seq = conf->seq_flush;
   spin_unlock_irq(&conf->device_lock);
   bitmap_unplug(mddev->bitmap);
   spin_lock_irq(&conf->device_lock);
   conf->seq_write = seq;
   activate_bit_delay(conf);
  }

  while ((bio = remove_bio_from_retry(conf))) {
   int ok;
   spin_unlock_irq(&conf->device_lock);
   ok = retry_aligned_read(conf, bio);
   spin_lock_irq(&conf->device_lock);
   if (!ok)
    break;
   handled++;
  }

  batch_size = handle_active_stripes(conf);
  if (!batch_size)
   break;
  handled += batch_size;

  if (mddev->flags & ~(1<<MD_CHANGE_PENDING)) {
   spin_unlock_irq(&conf->device_lock);
   md_check_recovery(mddev);
   spin_lock_irq(&conf->device_lock);
  }
 }
 pr_debug("%d stripes handled\n", handled);

 spin_unlock_irq(&conf->device_lock);

 async_tx_issue_pending_all();
 unplug_slaves(mddev);

 pr_debug("--- raid5d inactive\n");
}
