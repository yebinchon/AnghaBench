
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct bq24022_mach_info {int gpio_iset2; } ;


 scalar_t__ gpio_get_value (int ) ;
 struct bq24022_mach_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int bq24022_get_current_limit(struct regulator_dev *rdev)
{
 struct bq24022_mach_info *pdata = rdev_get_drvdata(rdev);

 return gpio_get_value(pdata->gpio_iset2) ? 500000 : 100000;
}
