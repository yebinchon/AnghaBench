
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
__ccwdev_check_busid(struct device *dev, void *id)
{
 char *bus_id;

 bus_id = id;

 return (strcmp(bus_id, dev_name(dev)) == 0);
}
