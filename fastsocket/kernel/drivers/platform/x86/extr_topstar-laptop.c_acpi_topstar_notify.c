
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tps_key_entry {int keycode; } ;
struct topstar_hkey {int inputdev; } ;
struct acpi_device {int dummy; } ;


 struct topstar_hkey* acpi_driver_data (struct acpi_device*) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int pr_info (char*,int) ;
 struct tps_key_entry* tps_get_key_by_scancode (int) ;

__attribute__((used)) static void acpi_topstar_notify(struct acpi_device *device, u32 event)
{
 struct tps_key_entry *key;
 static bool dup_evnt[2];
 bool *dup;
 struct topstar_hkey *hkey = acpi_driver_data(device);


 if (event == 0x83 || event == 0x84) {
  dup = &dup_evnt[event - 0x83];
  if (*dup) {
   *dup = 0;
   return;
  }
  *dup = 1;
 }





 if (event == 0x97)
  event = 0x96;

 key = tps_get_key_by_scancode(event);
 if (key) {
  input_report_key(hkey->inputdev, key->keycode, 1);
  input_sync(hkey->inputdev);
  input_report_key(hkey->inputdev, key->keycode, 0);
  input_sync(hkey->inputdev);
  return;
 }


 if (event == 0x8e || event == 0x8f || event == 0x90)
  return;

 pr_info("unknown event = 0x%02x\n", event);
}
