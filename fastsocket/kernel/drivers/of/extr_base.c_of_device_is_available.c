
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 char* of_get_property (struct device_node const*,char*,int*) ;
 int strcmp (char const*,char*) ;

int of_device_is_available(const struct device_node *device)
{
 const char *status;
 int statlen;

 status = of_get_property(device, "status", &statlen);
 if (status == ((void*)0))
  return 1;

 if (statlen > 0) {
  if (!strcmp(status, "okay") || !strcmp(status, "ok"))
   return 1;
 }

 return 0;
}
