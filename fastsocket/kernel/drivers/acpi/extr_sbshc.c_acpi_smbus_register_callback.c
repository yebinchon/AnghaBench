
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_smb_hc {int lock; void* context; int callback; } ;
typedef int smbus_alarm_callback ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int acpi_smbus_register_callback(struct acpi_smb_hc *hc,
            smbus_alarm_callback callback, void *context)
{
 mutex_lock(&hc->lock);
 hc->callback = callback;
 hc->context = context;
 mutex_unlock(&hc->lock);
 return 0;
}
