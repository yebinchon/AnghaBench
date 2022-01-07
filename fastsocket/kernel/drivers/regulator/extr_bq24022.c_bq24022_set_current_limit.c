
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct bq24022_mach_info {int gpio_iset2; } ;


 int dev_dbg (int ,char*,char*) ;
 int gpio_set_value (int ,int) ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct bq24022_mach_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int bq24022_set_current_limit(struct regulator_dev *rdev,
     int min_uA, int max_uA)
{
 struct bq24022_mach_info *pdata = rdev_get_drvdata(rdev);

 dev_dbg(rdev_get_dev(rdev), "setting current limit to %s mA\n",
  max_uA >= 500000 ? "500" : "100");


 gpio_set_value(pdata->gpio_iset2, max_uA >= 500000);
 return 0;
}
