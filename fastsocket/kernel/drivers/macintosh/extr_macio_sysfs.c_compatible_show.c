
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {int node; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct of_device ofdev; } ;


 char* of_get_property (int ,char*,int*) ;
 scalar_t__ sprintf (char*,char*,char const*) ;
 int strlen (char const*) ;
 TYPE_1__* to_macio_device (struct device*) ;

__attribute__((used)) static ssize_t
compatible_show (struct device *dev, struct device_attribute *attr, char *buf)
{
 struct of_device *of;
 const char *compat;
 int cplen;
 int length = 0;

 of = &to_macio_device (dev)->ofdev;
 compat = of_get_property(of->node, "compatible", &cplen);
 if (!compat) {
  *buf = '\0';
  return 0;
 }
 while (cplen > 0) {
  int l;
  length += sprintf (buf, "%s\n", compat);
  buf += length;
  l = strlen (compat) + 1;
  compat += l;
  cplen -= l;
 }

 return length;
}
