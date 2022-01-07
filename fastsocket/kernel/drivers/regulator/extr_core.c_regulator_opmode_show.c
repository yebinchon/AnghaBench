
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int _regulator_get_mode (struct regulator_dev*) ;
 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int regulator_print_opmode (char*,int ) ;

__attribute__((used)) static ssize_t regulator_opmode_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);

 return regulator_print_opmode(buf, _regulator_get_mode(rdev));
}
