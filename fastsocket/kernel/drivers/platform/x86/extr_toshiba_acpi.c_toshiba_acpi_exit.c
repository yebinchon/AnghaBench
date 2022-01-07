
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p_dev; scalar_t__ bt_rfk; } ;


 int PROC_TOSHIBA ;
 int acpi_root_dir ;
 int backlight_device_unregister (scalar_t__) ;
 int platform_device_unregister (int ) ;
 int remove_device () ;
 int remove_proc_entry (int ,int ) ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_unregister (scalar_t__) ;
 TYPE_1__ toshiba_acpi ;
 scalar_t__ toshiba_backlight_device ;
 scalar_t__ toshiba_proc_dir ;

__attribute__((used)) static void toshiba_acpi_exit(void)
{
 if (toshiba_acpi.bt_rfk) {
  rfkill_unregister(toshiba_acpi.bt_rfk);
  rfkill_destroy(toshiba_acpi.bt_rfk);
 }

 if (toshiba_backlight_device)
  backlight_device_unregister(toshiba_backlight_device);

 remove_device();

 if (toshiba_proc_dir)
  remove_proc_entry(PROC_TOSHIBA, acpi_root_dir);

 platform_device_unregister(toshiba_acpi.p_dev);

 return;
}
