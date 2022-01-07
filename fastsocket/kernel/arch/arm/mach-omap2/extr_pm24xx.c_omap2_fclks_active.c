
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CM_FCLKEN1 ;
 int CORE_MOD ;
 int OMAP24XX_CM_FCLKEN2 ;
 int OMAP24XX_EN_UART1 ;
 int OMAP24XX_EN_UART2 ;
 int OMAP24XX_EN_UART3 ;
 int cm_read_mod_reg (int ,int ) ;

__attribute__((used)) static int omap2_fclks_active(void)
{
 u32 f1, f2;

 f1 = cm_read_mod_reg(CORE_MOD, CM_FCLKEN1);
 f2 = cm_read_mod_reg(CORE_MOD, OMAP24XX_CM_FCLKEN2);


 f1 &= ~(OMAP24XX_EN_UART1 | OMAP24XX_EN_UART2);
 f2 &= ~OMAP24XX_EN_UART3;

 if (f1 | f2)
  return 1;
 return 0;
}
