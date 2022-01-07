
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ dio_resource_end (struct dio_dev*) ;
 int dio_resource_flags (struct dio_dev*) ;
 scalar_t__ dio_resource_start (struct dio_dev*) ;
 int sprintf (char*,char*,unsigned long,unsigned long,int ) ;
 struct dio_dev* to_dio_dev (struct device*) ;

__attribute__((used)) static ssize_t dio_show_resource(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct dio_dev *d = to_dio_dev(dev);

 return sprintf(buf, "0x%08lx 0x%08lx 0x%08lx\n",
         (unsigned long)dio_resource_start(d),
         (unsigned long)dio_resource_end(d),
         dio_resource_flags(d));
}
