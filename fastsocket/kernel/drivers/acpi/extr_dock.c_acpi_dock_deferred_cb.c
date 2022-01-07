
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_data {int ds; int event; int handle; } ;


 int dock_notify (int ,int ,int ) ;
 int kfree (struct dock_data*) ;

__attribute__((used)) static void acpi_dock_deferred_cb(void *context)
{
 struct dock_data *data = (struct dock_data *)context;

 dock_notify(data->handle, data->event, data->ds);
 kfree(data);
}
