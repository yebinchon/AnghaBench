
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMI_PRODUCT_SERIAL ;
 scalar_t__* dmi_ident ;
 scalar_t__ strstr (scalar_t__,char const*) ;

int dmi_name_in_serial(const char *str)
{
 int f = DMI_PRODUCT_SERIAL;
 if (dmi_ident[f] && strstr(dmi_ident[f], str))
  return 1;
 return 0;
}
