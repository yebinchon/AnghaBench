
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* private; } ;
struct TYPE_3__ {scalar_t__ cmb; } ;


 int sprintf (char*,char*,int) ;
 TYPE_2__* to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t cmb_enable_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 return sprintf(buf, "%d\n", to_ccwdev(dev)->private->cmb ? 1 : 0);
}
