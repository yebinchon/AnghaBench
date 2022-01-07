
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long config; } ;


 int MFP_PIN (unsigned long) ;
 int __mfp_config_gpio (int,unsigned long) ;
 int __mfp_validate (int ) ;
 TYPE_1__* gpio_desc ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void pxa2xx_mfp_config(unsigned long *mfp_cfgs, int num)
{
 unsigned long flags;
 unsigned long *c;
 int i, gpio;

 for (i = 0, c = mfp_cfgs; i < num; i++, c++) {

  gpio = __mfp_validate(MFP_PIN(*c));
  if (gpio < 0)
   continue;

  local_irq_save(flags);

  gpio_desc[gpio].config = *c;
  __mfp_config_gpio(gpio, *c);

  local_irq_restore(flags);
 }
}
