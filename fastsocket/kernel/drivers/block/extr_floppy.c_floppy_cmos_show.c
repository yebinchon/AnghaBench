
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int cmos; } ;


 TYPE_1__* UDP ;
 int sprintf (char*,char*,int) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t floppy_cmos_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct platform_device *p = to_platform_device(dev);
 int drive;

 drive = p->id;
 return sprintf(buf, "%X\n", UDP->cmos);
}
