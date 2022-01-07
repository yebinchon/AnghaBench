
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CM_FCLKEN ;
 int CM_FCLKEN1 ;
 int CORE_MOD ;
 int GFX_MOD ;
 int OMAP3430ES2_CM_FCLKEN3 ;
 int OMAP3430ES2_SGX_MOD ;
 int OMAP3430ES2_USBHOST_MOD ;
 int OMAP3430_CAM_MOD ;
 int OMAP3430_DSS_MOD ;
 int OMAP3430_EN_UART1 ;
 int OMAP3430_EN_UART2 ;
 int OMAP3430_EN_UART3 ;
 int OMAP3430_PER_MOD ;
 scalar_t__ OMAP3430_REV_ES1_0 ;
 int cm_read_mod_reg (int ,int ) ;
 scalar_t__ omap_rev () ;

__attribute__((used)) static int omap3_fclks_active(void)
{
 u32 fck_core1 = 0, fck_core3 = 0, fck_sgx = 0, fck_dss = 0,
  fck_cam = 0, fck_per = 0, fck_usbhost = 0;

 fck_core1 = cm_read_mod_reg(CORE_MOD,
        CM_FCLKEN1);
 if (omap_rev() > OMAP3430_REV_ES1_0) {
  fck_core3 = cm_read_mod_reg(CORE_MOD,
         OMAP3430ES2_CM_FCLKEN3);
  fck_sgx = cm_read_mod_reg(OMAP3430ES2_SGX_MOD,
       CM_FCLKEN);
  fck_usbhost = cm_read_mod_reg(OMAP3430ES2_USBHOST_MOD,
           CM_FCLKEN);
 } else
  fck_sgx = cm_read_mod_reg(GFX_MOD,
       OMAP3430ES2_CM_FCLKEN3);
 fck_dss = cm_read_mod_reg(OMAP3430_DSS_MOD,
      CM_FCLKEN);
 fck_cam = cm_read_mod_reg(OMAP3430_CAM_MOD,
      CM_FCLKEN);
 fck_per = cm_read_mod_reg(OMAP3430_PER_MOD,
      CM_FCLKEN);


 fck_core1 &= ~(OMAP3430_EN_UART1 | OMAP3430_EN_UART2);
 fck_per &= ~OMAP3430_EN_UART3;

 if (fck_core1 | fck_core3 | fck_sgx | fck_dss |
     fck_cam | fck_per | fck_usbhost)
  return 1;
 return 0;
}
