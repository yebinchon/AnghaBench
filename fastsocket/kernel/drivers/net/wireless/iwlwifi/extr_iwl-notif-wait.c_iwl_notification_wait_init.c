
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_notif_wait_data {int notif_waitq; int notif_waits; int notif_wait_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

void iwl_notification_wait_init(struct iwl_notif_wait_data *notif_wait)
{
 spin_lock_init(&notif_wait->notif_wait_lock);
 INIT_LIST_HEAD(&notif_wait->notif_waits);
 init_waitqueue_head(&notif_wait->notif_waitq);
}
