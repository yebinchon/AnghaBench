
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_status ) (struct regulator_dev*) ;} ;


 int ERANGE ;







 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;
 int stub1 (struct regulator_dev*) ;

__attribute__((used)) static ssize_t regulator_status_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);
 int status;
 char *label;

 status = rdev->desc->ops->get_status(rdev);
 if (status < 0)
  return status;

 switch (status) {
 case 130:
  label = "off";
  break;
 case 129:
  label = "on";
  break;
 case 134:
  label = "error";
  break;
 case 133:
  label = "fast";
  break;
 case 131:
  label = "normal";
  break;
 case 132:
  label = "idle";
  break;
 case 128:
  label = "standby";
  break;
 default:
  return -ERANGE;
 }

 return sprintf(buf, "%s\n", label);
}
