
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int table_len; int * table; } ;
struct regulator_dev {int dummy; } ;


 int LDO_MV (int ) ;
 int VREG_DEDICATED ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twl4030reg_read (struct twlreg_info*,int ) ;

__attribute__((used)) static int twl4030ldo_get_voltage(struct regulator_dev *rdev)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int vsel = twl4030reg_read(info, VREG_DEDICATED);

 if (vsel < 0)
  return vsel;

 vsel &= info->table_len - 1;
 return LDO_MV(info->table[vsel]) * 1000;
}
