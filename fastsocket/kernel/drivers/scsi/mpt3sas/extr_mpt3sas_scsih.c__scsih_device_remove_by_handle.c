
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct _sas_device {int list; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; scalar_t__ shost_recovery; } ;


 int _scsih_remove_device (struct MPT3SAS_ADAPTER*,struct _sas_device*) ;
 struct _sas_device* _scsih_sas_device_find_by_handle (struct MPT3SAS_ADAPTER*,int ) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_device_remove_by_handle(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
 struct _sas_device *sas_device;
 unsigned long flags;

 if (ioc->shost_recovery)
  return;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_device = _scsih_sas_device_find_by_handle(ioc, handle);
 if (sas_device)
  list_del(&sas_device->list);
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 if (sas_device)
  _scsih_remove_device(ioc, sas_device);
}
