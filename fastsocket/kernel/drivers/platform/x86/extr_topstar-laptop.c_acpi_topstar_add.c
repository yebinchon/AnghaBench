
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_hkey {int dummy; } ;
struct acpi_device {struct topstar_hkey* driver_data; } ;


 char* ACPI_TOPSTAR_CLASS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 scalar_t__ acpi_topstar_fncx_switch (struct acpi_device*,int) ;
 scalar_t__ acpi_topstar_init_hkey (struct topstar_hkey*) ;
 int kfree (struct topstar_hkey*) ;
 struct topstar_hkey* kzalloc (int,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int acpi_topstar_add(struct acpi_device *device)
{
 struct topstar_hkey *tps_hkey;

 tps_hkey = kzalloc(sizeof(struct topstar_hkey), GFP_KERNEL);
 if (!tps_hkey)
  return -ENOMEM;

 strcpy(acpi_device_name(device), "Topstar TPSACPI");
 strcpy(acpi_device_class(device), ACPI_TOPSTAR_CLASS);

 if (acpi_topstar_fncx_switch(device, 1))
  goto add_err;

 if (acpi_topstar_init_hkey(tps_hkey))
  goto add_err;

 device->driver_data = tps_hkey;
 return 0;

add_err:
 kfree(tps_hkey);
 return -ENODEV;
}
