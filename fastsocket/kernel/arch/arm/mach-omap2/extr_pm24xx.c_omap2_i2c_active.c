
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CM_FCLKEN1 ;
 int CORE_MOD ;
 int OMAP2420_EN_I2C1 ;
 int OMAP2420_EN_I2C2 ;
 int cm_read_mod_reg (int ,int ) ;

__attribute__((used)) static int omap2_i2c_active(void)
{
 u32 l;

 l = cm_read_mod_reg(CORE_MOD, CM_FCLKEN1);
 return l & (OMAP2420_EN_I2C2 | OMAP2420_EN_I2C1);
}
