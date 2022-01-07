
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tps_pmic {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int TPS65023_DCDC_1 ;
 int TPS65023_DCDC_3 ;
 int TPS65023_NUM_REGULATOR ;
 int TPS65023_REG_REG_CTRL ;
 struct tps_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int tps_65023_reg_read (struct tps_pmic*,int ) ;

__attribute__((used)) static int tps65023_dcdc_is_enabled(struct regulator_dev *dev)
{
 struct tps_pmic *tps = rdev_get_drvdata(dev);
 int data, dcdc = rdev_get_id(dev);
 u8 shift;

 if (dcdc < TPS65023_DCDC_1 || dcdc > TPS65023_DCDC_3)
  return -EINVAL;

 shift = TPS65023_NUM_REGULATOR - dcdc;
 data = tps_65023_reg_read(tps, TPS65023_REG_REG_CTRL);

 if (data < 0)
  return data;
 else
  return (data & 1<<shift) ? 1 : 0;
}
