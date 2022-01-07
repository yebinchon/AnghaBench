
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {int delayed_work; int list; } ;
struct MPT2SAS_ADAPTER {int fw_event_lock; int * firmware_event_thread; int fw_event_list; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int _firmware_event_work ;
 int list_add_tail (int *,int *) ;
 int queue_delayed_work (int *,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_fw_event_add(struct MPT2SAS_ADAPTER *ioc, struct fw_event_work *fw_event)
{
 unsigned long flags;

 if (ioc->firmware_event_thread == ((void*)0))
  return;

 spin_lock_irqsave(&ioc->fw_event_lock, flags);
 list_add_tail(&fw_event->list, &ioc->fw_event_list);
 INIT_DELAYED_WORK(&fw_event->delayed_work, _firmware_event_work);
 queue_delayed_work(ioc->firmware_event_thread,
     &fw_event->delayed_work, 0);
 spin_unlock_irqrestore(&ioc->fw_event_lock, flags);
}
