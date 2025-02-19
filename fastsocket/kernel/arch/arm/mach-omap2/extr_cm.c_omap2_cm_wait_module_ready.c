
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s16 ;


 int ARRAY_SIZE (int*) ;
 int BUG () ;
 int EBUSY ;
 int EINVAL ;
 int MAX_MODULE_READY_TIME ;
 int* cm_idlest_offs ;
 int cm_read_mod_reg (int ,int) ;
 scalar_t__ cpu_is_omap24xx () ;
 scalar_t__ cpu_is_omap34xx () ;
 int udelay (int) ;

int omap2_cm_wait_module_ready(s16 prcm_mod, u8 idlest_id, u8 idlest_shift)
{
 int ena = 0, i = 0;
 u8 cm_idlest_reg;
 u32 mask;

 if (!idlest_id || (idlest_id > ARRAY_SIZE(cm_idlest_offs)))
  return -EINVAL;

 cm_idlest_reg = cm_idlest_offs[idlest_id - 1];

 if (cpu_is_omap24xx())
  ena = idlest_shift;
 else if (cpu_is_omap34xx())
  ena = 0;
 else
  BUG();

 mask = 1 << idlest_shift;


 while (((cm_read_mod_reg(prcm_mod, cm_idlest_reg) & mask) != ena) &&
        (i++ < MAX_MODULE_READY_TIME))
  udelay(1);

 return (i < MAX_MODULE_READY_TIME) ? 0 : -EBUSY;
}
