
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_sbs {int manager_present; int batteries_supported; int hc; struct acpi_device* device; int lock; } ;
struct acpi_device {struct acpi_sbs* driver_data; int parent; } ;


 int ACPI_SBS_CLASS ;
 int ACPI_SBS_DEVICE_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_SBS_BAT ;
 int acpi_battery_add (struct acpi_sbs*,int) ;
 int acpi_charger_add (struct acpi_sbs*) ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int acpi_driver_data (int ) ;
 int acpi_manager_get_info (struct acpi_sbs*) ;
 int acpi_sbs_callback ;
 int acpi_sbs_remove (struct acpi_device*,int ) ;
 int acpi_smbus_register_callback (int ,int ,struct acpi_sbs*) ;
 struct acpi_sbs* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int acpi_sbs_add(struct acpi_device *device)
{
 struct acpi_sbs *sbs;
 int result = 0;
 int id;

 sbs = kzalloc(sizeof(struct acpi_sbs), GFP_KERNEL);
 if (!sbs) {
  result = -ENOMEM;
  goto end;
 }

 mutex_init(&sbs->lock);

 sbs->hc = acpi_driver_data(device->parent);
 sbs->device = device;
 strcpy(acpi_device_name(device), ACPI_SBS_DEVICE_NAME);
 strcpy(acpi_device_class(device), ACPI_SBS_CLASS);
 device->driver_data = sbs;

 result = acpi_charger_add(sbs);
 if (result)
  goto end;

 result = acpi_manager_get_info(sbs);
 if (!result) {
  sbs->manager_present = 1;
  for (id = 0; id < MAX_SBS_BAT; ++id)
   if ((sbs->batteries_supported & (1 << id)))
    acpi_battery_add(sbs, id);
 } else
  acpi_battery_add(sbs, 0);
 acpi_smbus_register_callback(sbs->hc, acpi_sbs_callback, sbs);
      end:
 if (result)
  acpi_sbs_remove(device, 0);
 return result;
}
