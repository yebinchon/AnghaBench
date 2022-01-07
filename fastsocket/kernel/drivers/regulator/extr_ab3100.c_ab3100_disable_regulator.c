
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct regulator_dev {int dev; struct ab3100_regulator* reg_data; } ;
struct ab3100_regulator {scalar_t__ regreg; int ab3100; TYPE_1__* plfdata; } ;
struct TYPE_2__ {int* reg_initvals; } ;


 scalar_t__ AB3100_LDO_D ;
 int AB3100_REG_ON_MASK ;
 int ARRAY_SIZE (scalar_t__*) ;
 int ab3100_get_register_interruptible (int ,scalar_t__,int*) ;
 scalar_t__* ab3100_reg_init_order ;
 int ab3100_set_register_interruptible (int ,scalar_t__,int) ;
 int dev_err (int *,char*,scalar_t__) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static int ab3100_disable_regulator(struct regulator_dev *reg)
{
 struct ab3100_regulator *abreg = reg->reg_data;
 int err;
 u8 regval;





 if (abreg->regreg == AB3100_LDO_D) {
  int i;

  dev_info(&reg->dev, "disabling LDO D - shut down system\n");




  for (i = 0; i < ARRAY_SIZE(ab3100_reg_init_order); i++) {
   (void) ab3100_set_register_interruptible(abreg->ab3100,
     ab3100_reg_init_order[i],
     abreg->plfdata->reg_initvals[i]);
  }


  return ab3100_set_register_interruptible(abreg->ab3100,
        AB3100_LDO_D, 0x00U);

 }




 err = ab3100_get_register_interruptible(abreg->ab3100, abreg->regreg,
      &regval);
 if (err) {
  dev_err(&reg->dev, "unable to get register 0x%x\n",
   abreg->regreg);
  return err;
 }
 regval &= ~AB3100_REG_ON_MASK;
 return ab3100_set_register_interruptible(abreg->ab3100, abreg->regreg,
       regval);
}
