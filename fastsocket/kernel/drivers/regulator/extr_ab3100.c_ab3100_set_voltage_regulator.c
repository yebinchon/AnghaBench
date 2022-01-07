
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dev; struct ab3100_regulator* reg_data; } ;
struct ab3100_regulator {int regreg; int ab3100; } ;


 int ab3100_get_best_voltage_index (struct regulator_dev*,int,int) ;
 int ab3100_get_register_interruptible (int ,int ,int*) ;
 int ab3100_set_register_interruptible (int ,int ,int) ;
 int dev_warn (int *,char*,int ) ;

__attribute__((used)) static int ab3100_set_voltage_regulator(struct regulator_dev *reg,
     int min_uV, int max_uV)
{
 struct ab3100_regulator *abreg = reg->reg_data;
 u8 regval;
 int err;
 int bestindex;

 bestindex = ab3100_get_best_voltage_index(reg, min_uV, max_uV);
 if (bestindex < 0)
  return bestindex;

 err = ab3100_get_register_interruptible(abreg->ab3100,
      abreg->regreg, &regval);
 if (err) {
  dev_warn(&reg->dev,
    "failed to get regulator register %02x\n",
    abreg->regreg);
  return err;
 }


 regval &= ~0xE0;
 regval |= (bestindex << 5);

 err = ab3100_set_register_interruptible(abreg->ab3100,
      abreg->regreg, regval);
 if (err)
  dev_warn(&reg->dev, "failed to set regulator register %02x\n",
   abreg->regreg);

 return err;
}
