
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int model; } ;
typedef enum AV_MODE { ____Placeholder_AV_MODE } AV_MODE ;


 int ADC_PWRDN_CLAMP_CH1 ;
 int ADC_PWRDN_CLAMP_CH2 ;
 int ADC_PWRDN_CLAMP_CH3 ;
 int FLD_PWRDN_ENABLE_PLL ;
 int FLD_PWRDN_PD_BANDGAP ;
 int FLD_PWRDN_PD_BIAS ;
 int FLD_PWRDN_PD_TUNECK ;
 int FLD_PWRDN_TUNING_BIAS ;
 int POLARIS_AVMODE_ANALOGT_TV ;
 int POLARIS_AVMODE_DIGITAL ;
 int POLARIS_AVMODE_ENXTERNAL_AV ;
 int SUP_BLK_PWRDN ;
 int afe_read_byte (struct cx231xx*,int ,int*) ;
 int afe_write_byte (struct cx231xx*,int ,int) ;
 int cx231xx_info (char*) ;

int cx231xx_afe_update_power_control(struct cx231xx *dev,
     enum AV_MODE avmode)
{
 u8 afe_power_status = 0;
 int status = 0;

 switch (dev->model) {
 case 137:
 case 136:
 case 132:
 case 134:
 case 135:
 case 133:
 case 131:
 case 130:
 case 129:
 case 128:
  if (avmode == POLARIS_AVMODE_ANALOGT_TV) {
   while (afe_power_status != (FLD_PWRDN_TUNING_BIAS |
      FLD_PWRDN_ENABLE_PLL)) {
    status = afe_write_byte(dev, SUP_BLK_PWRDN,
       FLD_PWRDN_TUNING_BIAS |
       FLD_PWRDN_ENABLE_PLL);
    status |= afe_read_byte(dev, SUP_BLK_PWRDN,
       &afe_power_status);
    if (status < 0)
     break;
   }

   status = afe_write_byte(dev, ADC_PWRDN_CLAMP_CH1,
       0x00);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH2,
       0x00);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH3,
       0x00);
  } else if (avmode == POLARIS_AVMODE_DIGITAL) {
   status = afe_write_byte(dev, ADC_PWRDN_CLAMP_CH1,
       0x70);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH2,
       0x70);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH3,
       0x70);

   status |= afe_read_byte(dev, SUP_BLK_PWRDN,
        &afe_power_status);
   afe_power_status |= FLD_PWRDN_PD_BANDGAP |
      FLD_PWRDN_PD_BIAS |
      FLD_PWRDN_PD_TUNECK;
   status |= afe_write_byte(dev, SUP_BLK_PWRDN,
         afe_power_status);
  } else if (avmode == POLARIS_AVMODE_ENXTERNAL_AV) {
   while (afe_power_status != (FLD_PWRDN_TUNING_BIAS |
      FLD_PWRDN_ENABLE_PLL)) {
    status = afe_write_byte(dev, SUP_BLK_PWRDN,
       FLD_PWRDN_TUNING_BIAS |
       FLD_PWRDN_ENABLE_PLL);
    status |= afe_read_byte(dev, SUP_BLK_PWRDN,
       &afe_power_status);
    if (status < 0)
     break;
   }

   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH1,
      0x00);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH2,
      0x00);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH3,
      0x00);
  } else {
   cx231xx_info("Invalid AV mode input\n");
   status = -1;
  }
  break;
 default:
  if (avmode == POLARIS_AVMODE_ANALOGT_TV) {
   while (afe_power_status != (FLD_PWRDN_TUNING_BIAS |
      FLD_PWRDN_ENABLE_PLL)) {
    status = afe_write_byte(dev, SUP_BLK_PWRDN,
       FLD_PWRDN_TUNING_BIAS |
       FLD_PWRDN_ENABLE_PLL);
    status |= afe_read_byte(dev, SUP_BLK_PWRDN,
       &afe_power_status);
    if (status < 0)
     break;
   }

   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH1,
       0x40);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH2,
       0x40);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH3,
       0x00);
  } else if (avmode == POLARIS_AVMODE_DIGITAL) {
   status = afe_write_byte(dev, ADC_PWRDN_CLAMP_CH1,
       0x70);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH2,
       0x70);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH3,
       0x70);

   status |= afe_read_byte(dev, SUP_BLK_PWRDN,
             &afe_power_status);
   afe_power_status |= FLD_PWRDN_PD_BANDGAP |
      FLD_PWRDN_PD_BIAS |
      FLD_PWRDN_PD_TUNECK;
   status |= afe_write_byte(dev, SUP_BLK_PWRDN,
       afe_power_status);
  } else if (avmode == POLARIS_AVMODE_ENXTERNAL_AV) {
   while (afe_power_status != (FLD_PWRDN_TUNING_BIAS |
      FLD_PWRDN_ENABLE_PLL)) {
    status = afe_write_byte(dev, SUP_BLK_PWRDN,
       FLD_PWRDN_TUNING_BIAS |
       FLD_PWRDN_ENABLE_PLL);
    status |= afe_read_byte(dev, SUP_BLK_PWRDN,
       &afe_power_status);
    if (status < 0)
     break;
   }

   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH1,
       0x00);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH2,
       0x00);
   status |= afe_write_byte(dev, ADC_PWRDN_CLAMP_CH3,
       0x40);
  } else {
   cx231xx_info("Invalid AV mode input\n");
   status = -1;
  }
 }

 return status;
}
