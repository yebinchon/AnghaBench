
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tps_pmic {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int TPS6507X_LDO_1 ;
 int TPS6507X_LDO_2 ;
 int TPS6507X_MAX_REG_ID ;
 int TPS6507X_REG_CON_CTRL1 ;
 struct tps_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int tps_6507x_reg_read (struct tps_pmic*,int ) ;

__attribute__((used)) static int tps6507x_ldo_is_enabled(struct regulator_dev *dev)
{
 struct tps_pmic *tps = rdev_get_drvdata(dev);
 int data, ldo = rdev_get_id(dev);
 u8 shift;

 if (ldo < TPS6507X_LDO_1 || ldo > TPS6507X_LDO_2)
  return -EINVAL;

 shift = TPS6507X_MAX_REG_ID - ldo;
 data = tps_6507x_reg_read(tps, TPS6507X_REG_CON_CTRL1);

 if (data < 0)
  return data;
 else
  return (data & 1<<shift) ? 1 : 0;
}
