
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_notification_wait {scalar_t__ aborted; int list; scalar_t__ triggered; } ;
struct iwl_notif_wait_data {int notif_wait_lock; int notif_waitq; } ;


 int EIO ;
 int ETIMEDOUT ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_event_timeout (int ,int,unsigned long) ;

int iwl_wait_notification(struct iwl_notif_wait_data *notif_wait,
     struct iwl_notification_wait *wait_entry,
     unsigned long timeout)
{
 int ret;

 ret = wait_event_timeout(notif_wait->notif_waitq,
     wait_entry->triggered || wait_entry->aborted,
     timeout);

 spin_lock_bh(&notif_wait->notif_wait_lock);
 list_del(&wait_entry->list);
 spin_unlock_bh(&notif_wait->notif_wait_lock);

 if (wait_entry->aborted)
  return -EIO;


 if (ret <= 0)
  return -ETIMEDOUT;
 return 0;
}
