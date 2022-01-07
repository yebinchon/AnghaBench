
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_dvo_device {int dummy; } ;


 int DRM_LOG_KMS (char*,int ,...) ;
 int TFP410_CTL_1 ;
 int TFP410_CTL_2 ;
 int TFP410_CTL_3 ;
 int TFP410_DE_CNT_HI ;
 int TFP410_DE_CNT_LO ;
 int TFP410_DE_CTL ;
 int TFP410_DE_DLY ;
 int TFP410_DE_LIN_HI ;
 int TFP410_DE_LIN_LO ;
 int TFP410_DE_TOP ;
 int TFP410_H_RES_HI ;
 int TFP410_H_RES_LO ;
 int TFP410_REV ;
 int TFP410_USERCFG ;
 int TFP410_V_RES_HI ;
 int TFP410_V_RES_LO ;
 int tfp410_readb (struct intel_dvo_device*,int ,int *) ;

__attribute__((used)) static void tfp410_dump_regs(struct intel_dvo_device *dvo)
{
 uint8_t val, val2;

 tfp410_readb(dvo, TFP410_REV, &val);
 DRM_LOG_KMS("TFP410_REV: 0x%02X\n", val);
 tfp410_readb(dvo, TFP410_CTL_1, &val);
 DRM_LOG_KMS("TFP410_CTL1: 0x%02X\n", val);
 tfp410_readb(dvo, TFP410_CTL_2, &val);
 DRM_LOG_KMS("TFP410_CTL2: 0x%02X\n", val);
 tfp410_readb(dvo, TFP410_CTL_3, &val);
 DRM_LOG_KMS("TFP410_CTL3: 0x%02X\n", val);
 tfp410_readb(dvo, TFP410_USERCFG, &val);
 DRM_LOG_KMS("TFP410_USERCFG: 0x%02X\n", val);
 tfp410_readb(dvo, TFP410_DE_DLY, &val);
 DRM_LOG_KMS("TFP410_DE_DLY: 0x%02X\n", val);
 tfp410_readb(dvo, TFP410_DE_CTL, &val);
 DRM_LOG_KMS("TFP410_DE_CTL: 0x%02X\n", val);
 tfp410_readb(dvo, TFP410_DE_TOP, &val);
 DRM_LOG_KMS("TFP410_DE_TOP: 0x%02X\n", val);
 tfp410_readb(dvo, TFP410_DE_CNT_LO, &val);
 tfp410_readb(dvo, TFP410_DE_CNT_HI, &val2);
 DRM_LOG_KMS("TFP410_DE_CNT: 0x%02X%02X\n", val2, val);
 tfp410_readb(dvo, TFP410_DE_LIN_LO, &val);
 tfp410_readb(dvo, TFP410_DE_LIN_HI, &val2);
 DRM_LOG_KMS("TFP410_DE_LIN: 0x%02X%02X\n", val2, val);
 tfp410_readb(dvo, TFP410_H_RES_LO, &val);
 tfp410_readb(dvo, TFP410_H_RES_HI, &val2);
 DRM_LOG_KMS("TFP410_H_RES: 0x%02X%02X\n", val2, val);
 tfp410_readb(dvo, TFP410_V_RES_LO, &val);
 tfp410_readb(dvo, TFP410_V_RES_HI, &val2);
 DRM_LOG_KMS("TFP410_V_RES: 0x%02X%02X\n", val2, val);
}
