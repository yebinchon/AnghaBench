
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int __rtc_match(struct device *dev, void *data)
{
 char *name = (char *)data;

 if (strcmp(dev_name(dev), name) == 0)
  return 1;
 return 0;
}
