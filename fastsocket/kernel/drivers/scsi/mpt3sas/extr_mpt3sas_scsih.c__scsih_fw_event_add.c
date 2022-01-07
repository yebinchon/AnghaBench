
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {int work; int list; } ;
struct MPT3SAS_ADAPTER {int fw_event_lock; int * firmware_event_thread; int fw_event_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int _firmware_event_work ;
 int list_add_tail (int *,int *) ;
 int queue_work (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_fw_event_add(struct MPT3SAS_ADAPTER *ioc, struct fw_event_work *fw_event)
{
 unsigned long flags;

 if (ioc->firmware_event_thread == ((void*)0))
  return;

 spin_lock_irqsave(&ioc->fw_event_lock, flags);
 INIT_LIST_HEAD(&fw_event->list);
 list_add_tail(&fw_event->list, &ioc->fw_event_list);
 INIT_WORK(&fw_event->work, _firmware_event_work);
 queue_work(ioc->firmware_event_thread, &fw_event->work);
 spin_unlock_irqrestore(&ioc->fw_event_lock, flags);
}
