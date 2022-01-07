
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_lock; int lo_bio_list; int lo_event; } ;
struct bio {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ bio_list_empty (int *) ;
 int current ;
 scalar_t__ kthread_should_stop () ;
 struct bio* loop_get_bio (struct loop_device*) ;
 int loop_handle_bio (struct loop_device*,struct bio*) ;
 int set_user_nice (int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int loop_thread(void *data)
{
 struct loop_device *lo = data;
 struct bio *bio;

 set_user_nice(current, -20);

 while (!kthread_should_stop() || !bio_list_empty(&lo->lo_bio_list)) {

  wait_event_interruptible(lo->lo_event,
    !bio_list_empty(&lo->lo_bio_list) ||
    kthread_should_stop());

  if (bio_list_empty(&lo->lo_bio_list))
   continue;
  spin_lock_irq(&lo->lo_lock);
  bio = loop_get_bio(lo);
  spin_unlock_irq(&lo->lo_lock);

  BUG_ON(!bio);
  loop_handle_bio(lo, bio);
 }

 return 0;
}
