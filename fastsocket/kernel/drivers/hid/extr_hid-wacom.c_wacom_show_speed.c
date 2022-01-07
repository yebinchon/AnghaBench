
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_data {int high_speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct wacom_data* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t wacom_show_speed(struct device *dev,
    struct device_attribute
    *attr, char *buf)
{
 struct wacom_data *wdata = dev_get_drvdata(dev);

 return snprintf(buf, PAGE_SIZE, "%i\n", wdata->high_speed);
}
