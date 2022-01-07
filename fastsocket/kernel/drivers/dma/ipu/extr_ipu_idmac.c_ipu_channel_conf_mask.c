
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;






 int IPU_CONF_CSI_EN ;
 int IPU_CONF_DI_EN ;
 int IPU_CONF_IC_EN ;
 int IPU_CONF_SDC_EN ;

__attribute__((used)) static uint32_t ipu_channel_conf_mask(enum ipu_channel channel)
{
 uint32_t mask;

 switch (channel) {
 case 131:
 case 130:
  mask = IPU_CONF_CSI_EN | IPU_CONF_IC_EN;
  break;
 case 129:
 case 128:
  mask = IPU_CONF_SDC_EN | IPU_CONF_DI_EN;
  break;
 default:
  mask = 0;
  break;
 }

 return mask;
}
