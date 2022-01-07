
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int eventq; int event_nr; int disk; int uevent_lock; int uevent_list; } ;
struct TYPE_2__ {int kobj; } ;


 int LIST_HEAD (int ) ;
 int atomic_inc (int *) ;
 TYPE_1__* disk_to_dev (int ) ;
 int dm_send_uevents (int *,int *) ;
 int list_splice_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uevents ;
 int wake_up (int *) ;

__attribute__((used)) static void event_callback(void *context)
{
 unsigned long flags;
 LIST_HEAD(uevents);
 struct mapped_device *md = (struct mapped_device *) context;

 spin_lock_irqsave(&md->uevent_lock, flags);
 list_splice_init(&md->uevent_list, &uevents);
 spin_unlock_irqrestore(&md->uevent_lock, flags);

 dm_send_uevents(&uevents, &disk_to_dev(md->disk)->kobj);

 atomic_inc(&md->event_nr);
 wake_up(&md->eventq);
}
