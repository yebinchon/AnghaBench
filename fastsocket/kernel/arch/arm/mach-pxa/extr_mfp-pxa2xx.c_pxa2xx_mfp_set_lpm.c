
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long config; } ;


 unsigned long MFP_LPM_STATE_MASK ;
 int __mfp_config_gpio (int,unsigned long) ;
 int __mfp_validate (int) ;
 TYPE_1__* gpio_desc ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void pxa2xx_mfp_set_lpm(int mfp, unsigned long lpm)
{
 unsigned long flags, c;
 int gpio;

 gpio = __mfp_validate(mfp);
 if (gpio < 0)
  return;

 local_irq_save(flags);

 c = gpio_desc[gpio].config;
 c = (c & ~MFP_LPM_STATE_MASK) | lpm;
 __mfp_config_gpio(gpio, c);

 local_irq_restore(flags);
}
