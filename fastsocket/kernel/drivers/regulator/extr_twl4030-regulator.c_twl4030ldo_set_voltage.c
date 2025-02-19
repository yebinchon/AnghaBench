
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int table_len; int* table; } ;
struct regulator_dev {int dummy; } ;


 int EDOM ;
 scalar_t__ IS_UNSUP (int) ;
 int LDO_MV (int) ;
 int VREG_DEDICATED ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twl4030reg_write (struct twlreg_info*,int ,int) ;

__attribute__((used)) static int
twl4030ldo_set_voltage(struct regulator_dev *rdev, int min_uV, int max_uV)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int vsel;

 for (vsel = 0; vsel < info->table_len; vsel++) {
  int mV = info->table[vsel];
  int uV;

  if (IS_UNSUP(mV))
   continue;
  uV = LDO_MV(mV) * 1000;




  if (min_uV <= uV && uV <= max_uV)
   return twl4030reg_write(info, VREG_DEDICATED, vsel);
 }

 return -EDOM;
}
