
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8323_chip {int kp_enabled; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm8323_chip* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t lm8323_show_disable(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct lm8323_chip *lm = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", !lm->kp_enabled);
}
