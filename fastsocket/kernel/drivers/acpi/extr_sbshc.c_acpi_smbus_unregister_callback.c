
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_smb_hc {int lock; int * context; int * callback; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int acpi_smbus_unregister_callback(struct acpi_smb_hc *hc)
{
 mutex_lock(&hc->lock);
 hc->callback = ((void*)0);
 hc->context = ((void*)0);
 mutex_unlock(&hc->lock);
 return 0;
}
