
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270 {int cols; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
raw3270_columns_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%i\n",
   ((struct raw3270 *) dev_get_drvdata(dev))->cols);
}
