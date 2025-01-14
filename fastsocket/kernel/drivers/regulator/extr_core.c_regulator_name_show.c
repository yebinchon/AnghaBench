
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; TYPE_1__* constraints; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;


 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t regulator_name_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);
 const char *name;

 if (rdev->constraints && rdev->constraints->name)
  name = rdev->constraints->name;
 else if (rdev->desc->name)
  name = rdev->desc->name;
 else
  name = "";

 return sprintf(buf, "%s\n", name);
}
