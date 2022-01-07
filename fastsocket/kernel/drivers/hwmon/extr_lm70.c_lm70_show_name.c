
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm70 {int chip; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;


 struct lm70* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t lm70_show_name(struct device *dev, struct device_attribute
         *devattr, char *buf)
{
 struct lm70 *p_lm70 = dev_get_drvdata(dev);
 int ret;

 switch (p_lm70->chip) {
 case 129:
  ret = sprintf(buf, "lm70\n");
  break;
 case 128:
  ret = sprintf(buf, "tmp121\n");
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
