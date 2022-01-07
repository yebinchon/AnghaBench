
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pcf50633 {int dev; } ;


 int PCF50633_ADCS3_ADCDAT1L_MASK ;
 int PCF50633_REG_ADCS1 ;
 int PCF50633_REG_ADCS3 ;
 int dev_dbg (int ,char*,int) ;
 int pcf50633_reg_read (struct pcf50633*,int ) ;

__attribute__((used)) static int adc_result(struct pcf50633 *pcf)
{
 u8 adcs1, adcs3;
 u16 result;

 adcs1 = pcf50633_reg_read(pcf, PCF50633_REG_ADCS1);
 adcs3 = pcf50633_reg_read(pcf, PCF50633_REG_ADCS3);
 result = (adcs1 << 2) | (adcs3 & PCF50633_ADCS3_ADCDAT1L_MASK);

 dev_dbg(pcf->dev, "adc result = %d\n", result);

 return result;
}
