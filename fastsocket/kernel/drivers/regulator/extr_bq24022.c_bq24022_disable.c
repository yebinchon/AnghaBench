
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct bq24022_mach_info {int gpio_nce; } ;


 int dev_dbg (int ,char*) ;
 int gpio_set_value (int ,int) ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct bq24022_mach_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int bq24022_disable(struct regulator_dev *rdev)
{
 struct bq24022_mach_info *pdata = rdev_get_drvdata(rdev);

 dev_dbg(rdev_get_dev(rdev), "disabling charger\n");

 gpio_set_value(pdata->gpio_nce, 1);
 return 0;
}
