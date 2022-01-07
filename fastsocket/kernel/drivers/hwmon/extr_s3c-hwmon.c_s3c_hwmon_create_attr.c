
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* owner; void* mode; int name; } ;
struct TYPE_5__ {int show; TYPE_1__ attr; } ;
struct sensor_device_attribute {int index; TYPE_2__ dev_attr; } ;
struct s3c_hwmon_chcfg {scalar_t__ name; } ;
struct s3c_hwmon_attr {struct sensor_device_attribute in; int label_name; struct sensor_device_attribute label; int in_name; } ;
struct device {int dummy; } ;


 void* S_IRUGO ;
 void* THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 int device_create_file (struct device*,TYPE_2__*) ;
 int device_remove_file (struct device*,TYPE_2__*) ;
 int s3c_hwmon_ch_show ;
 int s3c_hwmon_label_show ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int s3c_hwmon_create_attr(struct device *dev,
     struct s3c_hwmon_chcfg *cfg,
     struct s3c_hwmon_attr *attrs,
     int channel)
{
 struct sensor_device_attribute *attr;
 int ret;

 snprintf(attrs->in_name, sizeof(attrs->in_name), "in%d_input", channel);

 attr = &attrs->in;
 attr->index = channel;
 attr->dev_attr.attr.name = attrs->in_name;
 attr->dev_attr.attr.mode = S_IRUGO;
 attr->dev_attr.attr.owner = THIS_MODULE;
 attr->dev_attr.show = s3c_hwmon_ch_show;

 ret = device_create_file(dev, &attr->dev_attr);
 if (ret < 0) {
  dev_err(dev, "failed to create input attribute\n");
  return ret;
 }


 if (cfg->name) {
  snprintf(attrs->label_name, sizeof(attrs->label_name),
    "in%d_label", channel);

  attr = &attrs->label;
  attr->index = channel;
  attr->dev_attr.attr.name = attrs->label_name;
  attr->dev_attr.attr.mode = S_IRUGO;
  attr->dev_attr.attr.owner = THIS_MODULE;
  attr->dev_attr.show = s3c_hwmon_label_show;

  ret = device_create_file(dev, &attr->dev_attr);
  if (ret < 0) {
   device_remove_file(dev, &attrs->in.dev_attr);
   dev_err(dev, "failed to create label attribute\n");
  }
 }

 return ret;
}
