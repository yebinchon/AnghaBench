
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ hotkey_mask; } ;


 int EIO ;
 int acpi_evalf (int ,int*,char*,char*) ;
 int hkey_handle ;
 int hotkey_acpi_mask ;
 int hotkey_all_mask ;
 int hotkey_source_mask ;
 int hotkey_user_mask ;
 TYPE_1__ tp_features ;

__attribute__((used)) static int hotkey_mask_get(void)
{
 if (tp_features.hotkey_mask) {
  u32 m = 0;

  if (!acpi_evalf(hkey_handle, &m, "DHKN", "d"))
   return -EIO;

  hotkey_acpi_mask = m;
 } else {

  hotkey_acpi_mask = hotkey_all_mask;
 }


 hotkey_user_mask &= (hotkey_acpi_mask | hotkey_source_mask);

 return 0;
}
