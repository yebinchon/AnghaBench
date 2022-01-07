
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dev; struct ab3100_regulator* reg_data; } ;
struct ab3100_regulator {int fixed_voltage; int voltages_len; int* typ_voltages; int regreg; int ab3100; } ;


 int EINVAL ;
 int ab3100_get_register_interruptible (int ,int ,int*) ;
 int dev_err (int *,char*,int ) ;
 int dev_warn (int *,char*,int ) ;

__attribute__((used)) static int ab3100_get_voltage_regulator(struct regulator_dev *reg)
{
 struct ab3100_regulator *abreg = reg->reg_data;
 u8 regval;
 int err;


 if (abreg->fixed_voltage)
  return abreg->fixed_voltage;





 err = ab3100_get_register_interruptible(abreg->ab3100,
      abreg->regreg, &regval);
 if (err) {
  dev_warn(&reg->dev,
    "failed to get regulator value in register %02x\n",
    abreg->regreg);
  return err;
 }


 regval &= 0xE0;
 regval >>= 5;

 if (regval > abreg->voltages_len) {
  dev_err(&reg->dev,
   "regulator register %02x contains an illegal voltage setting\n",
   abreg->regreg);
  return -EINVAL;
 }

 return abreg->typ_voltages[regval];
}
