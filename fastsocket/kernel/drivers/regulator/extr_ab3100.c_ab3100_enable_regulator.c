
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dev; struct ab3100_regulator* reg_data; } ;
struct ab3100_regulator {int regreg; int ab3100; } ;
 int AB3100_REG_ON_MASK ;
 int ab3100_get_register_interruptible (int ,int,int*) ;
 int ab3100_set_register_interruptible (int ,int,int) ;
 int dev_warn (int *,char*,int) ;
 int mdelay (int) ;
 int udelay (int) ;

__attribute__((used)) static int ab3100_enable_regulator(struct regulator_dev *reg)
{
 struct ab3100_regulator *abreg = reg->reg_data;
 int err;
 u8 regval;

 err = ab3100_get_register_interruptible(abreg->ab3100, abreg->regreg,
      &regval);
 if (err) {
  dev_warn(&reg->dev, "failed to get regid %d value\n",
    abreg->regreg);
  return err;
 }


 if (regval & AB3100_REG_ON_MASK)
  return 0;

 regval |= AB3100_REG_ON_MASK;

 err = ab3100_set_register_interruptible(abreg->ab3100, abreg->regreg,
      regval);
 if (err) {
  dev_warn(&reg->dev, "failed to set regid %d value\n",
    abreg->regreg);
  return err;
 }


 switch (abreg->regreg) {
 case 135:
 case 134:
 case 133:
 case 132:
 case 129:
 case 128:
  udelay(200);
  break;
 case 131:
  udelay(600);
  break;
 case 130:
  udelay(400);
  break;
 case 136:
  mdelay(1);
  break;
 default:
  break;
 }

 return 0;
}
