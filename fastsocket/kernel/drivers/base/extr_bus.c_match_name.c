
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int sysfs_streq (char const*,int ) ;

__attribute__((used)) static int match_name(struct device *dev, void *data)
{
 const char *name = data;

 return sysfs_streq(name, dev_name(dev));
}
