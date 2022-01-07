
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13783 {int adc_conv_lock; scalar_t__ ts_active; int adc_done; } ;


 int EINVAL ;
 unsigned int MC13783_ADC0_ADINC1 ;
 unsigned int MC13783_ADC0_ADINC2 ;
 unsigned int MC13783_ADC0_ADREFEN ;
 unsigned int MC13783_ADC0_ADREFMODE ;
 unsigned int MC13783_ADC0_TSMOD0 ;
 unsigned int MC13783_ADC0_TSMOD1 ;
 unsigned int MC13783_ADC1_ADEN ;
 unsigned int MC13783_ADC1_ADSEL ;
 unsigned int MC13783_ADC1_ADTRIGIGN ;
 unsigned int MC13783_ADC1_ASC ;
 unsigned int MC13783_ADC1_CHAN0_SHIFT ;
 int MC13783_ADC1_CHAN1_SHIFT ;
 unsigned int MC13783_ADC1_RAND ;



 int MC13783_REG_ADC_0 ;
 int MC13783_REG_ADC_1 ;
 int MC13783_REG_ADC_2 ;
 int mc13783_adc_set_ts_irq_mode (struct mc13783*) ;
 int mc13783_reg_read (struct mc13783*,int ,unsigned int*) ;
 int mc13783_reg_write (struct mc13783*,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_interruptible (int *) ;

int mc13783_adc_do_conversion(struct mc13783 *mc13783, unsigned int mode,
  unsigned int channel, unsigned int *sample)
{
 unsigned int reg_adc0, reg_adc1;
 int i;

 mutex_lock(&mc13783->adc_conv_lock);


 reg_adc0 = MC13783_ADC0_ADINC1 | MC13783_ADC0_ADINC2;


 reg_adc1 = MC13783_ADC1_ADEN | MC13783_ADC1_ADTRIGIGN
  | MC13783_ADC1_ASC;


 if (channel > 7)
  reg_adc1 |= MC13783_ADC1_ADSEL;

 switch (mode) {
 case 128:


  reg_adc0 |= MC13783_ADC0_ADREFEN | MC13783_ADC0_ADREFMODE
   | MC13783_ADC0_TSMOD0 | MC13783_ADC0_TSMOD1;
  reg_adc1 |= 4 << MC13783_ADC1_CHAN1_SHIFT;
  break;
 case 129:
  reg_adc1 |= (channel & 0x7) << MC13783_ADC1_CHAN0_SHIFT;
  reg_adc1 |= MC13783_ADC1_RAND;
  break;
 case 130:
  reg_adc1 |= 4 << MC13783_ADC1_CHAN1_SHIFT;
  break;
 default:
  return -EINVAL;
 }

 mc13783_reg_write(mc13783, MC13783_REG_ADC_0, reg_adc0);
 mc13783_reg_write(mc13783, MC13783_REG_ADC_1, reg_adc1);

 wait_for_completion_interruptible(&mc13783->adc_done);

 for (i = 0; i < 4; i++)
  mc13783_reg_read(mc13783, MC13783_REG_ADC_2, &sample[i]);

 if (mc13783->ts_active)
  mc13783_adc_set_ts_irq_mode(mc13783);

 mutex_unlock(&mc13783->adc_conv_lock);

 return 0;
}
