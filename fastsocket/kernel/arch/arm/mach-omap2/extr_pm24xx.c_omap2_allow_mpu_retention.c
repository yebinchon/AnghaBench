
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CM_FCLKEN1 ;
 int CORE_MOD ;
 int OMAP2420_EN_MMC ;
 int OMAP24XX_CM_FCLKEN2 ;
 int OMAP24XX_EN_DSS1 ;
 int OMAP24XX_EN_MCSPI1 ;
 int OMAP24XX_EN_MCSPI2 ;
 int OMAP24XX_EN_UART1 ;
 int OMAP24XX_EN_UART2 ;
 int OMAP24XX_EN_UART3 ;
 int cm_read_mod_reg (int ,int ) ;
 scalar_t__ sti_console_enabled ;

__attribute__((used)) static int omap2_allow_mpu_retention(void)
{
 u32 l;


 l = cm_read_mod_reg(CORE_MOD, CM_FCLKEN1);
 if (l & (OMAP2420_EN_MMC | OMAP24XX_EN_UART2 |
   OMAP24XX_EN_UART1 | OMAP24XX_EN_MCSPI2 |
   OMAP24XX_EN_MCSPI1 | OMAP24XX_EN_DSS1))
  return 0;

 l = cm_read_mod_reg(CORE_MOD, OMAP24XX_CM_FCLKEN2);
 if (l & OMAP24XX_EN_UART3)
  return 0;
 if (sti_console_enabled)
  return 0;

 return 1;
}
