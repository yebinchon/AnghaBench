
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int TP_HOTKEY_TABLET_MASK ;
 int acpi_evalf (int ,int*,char*,char*) ;
 int hkey_handle ;

__attribute__((used)) static int hotkey_get_tablet_mode(int *status)
{
 int s;

 if (!acpi_evalf(hkey_handle, &s, "MHKG", "d"))
  return -EIO;

 *status = ((s & TP_HOTKEY_TABLET_MASK) != 0);
 return 0;
}
