
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct s3c_hwmon_pdata {struct s3c_hwmon_chcfg** in; } ;
struct s3c_hwmon_chcfg {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {struct s3c_hwmon_pdata* platform_data; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t s3c_hwmon_label_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct sensor_device_attribute *sen_attr = to_sensor_dev_attr(attr);
 struct s3c_hwmon_pdata *pdata = dev->platform_data;
 struct s3c_hwmon_chcfg *cfg;

 cfg = pdata->in[sen_attr->index];

 return snprintf(buf, PAGE_SIZE, "%s\n", cfg->name);
}
