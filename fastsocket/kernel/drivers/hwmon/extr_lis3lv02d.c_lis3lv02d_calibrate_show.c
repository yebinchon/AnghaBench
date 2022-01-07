
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int xcalib; int ycalib; int zcalib; } ;


 TYPE_1__ lis3_dev ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t lis3lv02d_calibrate_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "(%d,%d,%d)\n", lis3_dev.xcalib, lis3_dev.ycalib, lis3_dev.zcalib);
}
