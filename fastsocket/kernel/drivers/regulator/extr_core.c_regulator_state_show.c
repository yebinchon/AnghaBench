
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int _regulator_is_enabled (struct regulator_dev*) ;
 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_print_state (char*,int ) ;

__attribute__((used)) static ssize_t regulator_state_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);
 ssize_t ret;

 mutex_lock(&rdev->mutex);
 ret = regulator_print_state(buf, _regulator_is_enabled(rdev));
 mutex_unlock(&rdev->mutex);

 return ret;
}
