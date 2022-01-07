
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;


 struct regulator_dev* dev_get_drvdata (struct device*) ;
 int kfree (struct regulator_dev*) ;

__attribute__((used)) static void regulator_dev_release(struct device *dev)
{
 struct regulator_dev *rdev = dev_get_drvdata(dev);
 kfree(rdev);
}
