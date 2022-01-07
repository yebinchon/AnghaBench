
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633 {int dummy; } ;


 int PCF50633_ADCC1_ADCMUX_MASK ;
 int PCF50633_ADCC1_ADCSTART ;
 int PCF50633_ADCC1_RES_10BIT ;
 int PCF50633_REG_ADCC1 ;
 int PCF50633_REG_ADCC2 ;
 int PCF50633_REG_ADCC3 ;
 int pcf50633_reg_write (struct pcf50633*,int ,int) ;

__attribute__((used)) static void adc_setup(struct pcf50633 *pcf, int channel, int avg)
{
 channel &= PCF50633_ADCC1_ADCMUX_MASK;


 pcf50633_reg_write(pcf, PCF50633_REG_ADCC2, 0x00);
 pcf50633_reg_write(pcf, PCF50633_REG_ADCC3, 0x01);


 pcf50633_reg_write(pcf, PCF50633_REG_ADCC1, channel | avg |
      PCF50633_ADCC1_ADCSTART | PCF50633_ADCC1_RES_10BIT);
}
