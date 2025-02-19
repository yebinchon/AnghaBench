
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct regulator_dev {int dev; } ;
struct lp3971 {int dummy; } ;


 size_t BUCK_TARGET_VOL_MASK ;
 size_t BUCK_TARGET_VOL_MAX_IDX ;
 int LP3971_BUCK_TARGET_VOL1_REG (int) ;
 int LP3971_DCDC1 ;
 int* buck_voltage_map ;
 int dev_warn (int *,char*) ;
 size_t lp3971_reg_read (struct lp3971*,int ) ;
 struct lp3971* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp3971_dcdc_get_voltage(struct regulator_dev *dev)
{
 struct lp3971 *lp3971 = rdev_get_drvdata(dev);
 int buck = rdev_get_id(dev) - LP3971_DCDC1;
 u16 reg;
 int val;

 reg = lp3971_reg_read(lp3971, LP3971_BUCK_TARGET_VOL1_REG(buck));
 reg &= BUCK_TARGET_VOL_MASK;

 if (reg <= BUCK_TARGET_VOL_MAX_IDX)
  val = 1000 * buck_voltage_map[reg];
 else {
  val = 0;
  dev_warn(&dev->dev, "chip reported incorrect voltage value.\n");
 }

 return val;
}
