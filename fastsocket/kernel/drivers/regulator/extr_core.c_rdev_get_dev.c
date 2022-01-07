
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct regulator_dev {struct device dev; } ;



struct device *rdev_get_dev(struct regulator_dev *rdev)
{
 return &rdev->dev;
}
