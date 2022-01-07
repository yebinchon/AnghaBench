
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROC_ASUS ;
 int acpi_bus_unregister_driver (int *) ;
 int acpi_root_dir ;
 scalar_t__ asus_backlight_device ;
 int asus_hotk_driver ;
 int backlight_device_unregister (scalar_t__) ;
 int remove_proc_entry (int ,int ) ;

__attribute__((used)) static void asus_acpi_exit(void)
{
 if (asus_backlight_device)
  backlight_device_unregister(asus_backlight_device);

 acpi_bus_unregister_driver(&asus_hotk_driver);
 remove_proc_entry(PROC_ASUS, acpi_root_dir);

 return;
}
