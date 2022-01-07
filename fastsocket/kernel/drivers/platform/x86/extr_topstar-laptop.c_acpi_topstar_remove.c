
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_hkey {int inputdev; } ;
struct acpi_device {int dummy; } ;


 struct topstar_hkey* acpi_driver_data (struct acpi_device*) ;
 int acpi_topstar_fncx_switch (struct acpi_device*,int) ;
 int input_unregister_device (int ) ;
 int kfree (struct topstar_hkey*) ;

__attribute__((used)) static int acpi_topstar_remove(struct acpi_device *device, int type)
{
 struct topstar_hkey *tps_hkey = acpi_driver_data(device);

 acpi_topstar_fncx_switch(device, 0);

 input_unregister_device(tps_hkey->inputdev);
 kfree(tps_hkey);

 return 0;
}
