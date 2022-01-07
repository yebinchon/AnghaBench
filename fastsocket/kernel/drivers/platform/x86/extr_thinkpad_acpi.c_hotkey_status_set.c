
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int acpi_evalf (int ,int *,char*,char*,int) ;
 int hkey_handle ;

__attribute__((used)) static int hotkey_status_set(bool enable)
{
 if (!acpi_evalf(hkey_handle, ((void*)0), "MHKC", "vd", enable ? 1 : 0))
  return -EIO;

 return 0;
}
