
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int lis3_dev ;
 int lis3lv02d_get_xyz (int *,int*,int*,int*) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t lis3lv02d_position_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int x, y, z;

 lis3lv02d_get_xyz(&lis3_dev, &x, &y, &z);
 return sprintf(buf, "(%d,%d,%d)\n", x, y, z);
}
