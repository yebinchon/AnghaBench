
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sas_device {int list; } ;
struct MPT2SAS_ADAPTER {int sas_device_lock; } ;


 int kfree (struct _sas_device*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_sas_device_remove(struct MPT2SAS_ADAPTER *ioc,
    struct _sas_device *sas_device)
{
 unsigned long flags;

 if (!sas_device)
  return;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 list_del(&sas_device->list);
 kfree(sas_device);
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
}
