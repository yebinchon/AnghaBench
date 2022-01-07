
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dev; struct ab3100_regulator* reg_data; } ;
struct ab3100_regulator {int regreg; int ab3100; } ;


 int AB3100_REG_ON_MASK ;
 int ab3100_get_register_interruptible (int ,int ,int*) ;
 int dev_err (int *,char*,int ) ;

__attribute__((used)) static int ab3100_is_enabled_regulator(struct regulator_dev *reg)
{
 struct ab3100_regulator *abreg = reg->reg_data;
 u8 regval;
 int err;

 err = ab3100_get_register_interruptible(abreg->ab3100, abreg->regreg,
      &regval);
 if (err) {
  dev_err(&reg->dev, "unable to get register 0x%x\n",
   abreg->regreg);
  return err;
 }

 return regval & AB3100_REG_ON_MASK;
}
