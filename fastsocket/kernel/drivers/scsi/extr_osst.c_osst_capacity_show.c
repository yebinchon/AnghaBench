
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osst_tape {int capacity; scalar_t__ linux_media; scalar_t__ header_ok; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t osst_capacity_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct osst_tape * STp = (struct osst_tape *) dev_get_drvdata (dev);
 ssize_t l = 0;

 if (STp && STp->header_ok && STp->linux_media)
  l = snprintf(buf, PAGE_SIZE, "%d\n", STp->capacity);
 return l;
}
