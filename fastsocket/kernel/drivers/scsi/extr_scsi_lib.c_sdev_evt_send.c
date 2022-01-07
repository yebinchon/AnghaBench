
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_event {int node; int evt_type; } ;
struct scsi_device {int list_lock; int event_work; int event_list; int supported_events; } ;


 int kfree (struct scsi_event*) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int ) ;

void sdev_evt_send(struct scsi_device *sdev, struct scsi_event *evt)
{
 unsigned long flags;
 spin_lock_irqsave(&sdev->list_lock, flags);
 list_add_tail(&evt->node, &sdev->event_list);
 schedule_work(&sdev->event_work);
 spin_unlock_irqrestore(&sdev->list_lock, flags);
}
