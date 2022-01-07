
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95241_data {int rate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HZ ;
 scalar_t__ PAGE_SIZE ;
 struct lm95241_data* lm95241_update_device (struct device*) ;
 int snprintf (char*,scalar_t__,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t show_rate(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct lm95241_data *data = lm95241_update_device(dev);

 snprintf(buf, PAGE_SIZE - 1, "%lu\n", 1000 * data->rate / HZ);
 return strlen(buf);
}
