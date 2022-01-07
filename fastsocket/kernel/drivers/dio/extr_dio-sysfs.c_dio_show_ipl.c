
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_dev {int ipl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct dio_dev* to_dio_dev (struct device*) ;

__attribute__((used)) static ssize_t dio_show_ipl(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct dio_dev *d;

 d = to_dio_dev(dev);
 return sprintf(buf, "0x%02x\n", d->ipl);
}
