
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int atomic_t ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t
show_iostat_counterbits(struct device *dev, struct device_attribute *attr, char *buf)
{
 return snprintf(buf, 20, "%d\n", (int)sizeof(atomic_t) * 8);
}
