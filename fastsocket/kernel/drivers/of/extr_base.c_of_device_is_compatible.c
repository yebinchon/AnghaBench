
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 scalar_t__ of_compat_cmp (char const*,char const*,int) ;
 char* of_get_property (struct device_node const*,char*,int*) ;
 int strlen (char const*) ;

int of_device_is_compatible(const struct device_node *device,
  const char *compat)
{
 const char* cp;
 int cplen, l;

 cp = of_get_property(device, "compatible", &cplen);
 if (cp == ((void*)0))
  return 0;
 while (cplen > 0) {
  if (of_compat_cmp(cp, compat, strlen(compat)) == 0)
   return 1;
  l = strlen(cp) + 1;
  cp += l;
  cplen -= l;
 }

 return 0;
}
