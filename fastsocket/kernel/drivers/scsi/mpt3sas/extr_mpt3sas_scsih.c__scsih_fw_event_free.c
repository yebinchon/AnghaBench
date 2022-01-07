
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {struct fw_event_work* event_data; int list; } ;
struct MPT3SAS_ADAPTER {int fw_event_lock; } ;


 int kfree (struct fw_event_work*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_fw_event_free(struct MPT3SAS_ADAPTER *ioc, struct fw_event_work
 *fw_event)
{
 unsigned long flags;

 spin_lock_irqsave(&ioc->fw_event_lock, flags);
 list_del(&fw_event->list);
 kfree(fw_event->event_data);
 kfree(fw_event);
 spin_unlock_irqrestore(&ioc->fw_event_lock, flags);
}
