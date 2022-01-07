
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CORE_MOD ;
 int MPU_MOD ;
 unsigned long long NSEC_PER_USEC ;
 int OMAP24XX_PM_WKST2 ;
 int OMAP_LOGICRETSTATE ;
 int OMAP_POWERSTATE_SHIFT ;
 int PM_PWSTCTRL ;
 int PM_WKST ;
 int PM_WKST1 ;
 int WKUP_MOD ;
 int getnstimeofday (struct timespec*) ;
 scalar_t__ omap2_allow_mpu_retention () ;
 scalar_t__ omap2_i2c_active () ;
 scalar_t__ omap2_pm_debug ;
 int omap2_pm_dump (int,int,unsigned long long) ;
 int omap2_sram_idle () ;
 int prm_write_mod_reg (int,int ,int ) ;
 struct timespec timespec_sub (struct timespec,struct timespec) ;
 unsigned long long timespec_to_ns (struct timespec*) ;

__attribute__((used)) static void omap2_enter_mpu_retention(void)
{
 int only_idle = 0;
 struct timespec ts_preidle, ts_postidle, ts_idle;



 if (omap2_i2c_active())
  return;



 if (omap2_allow_mpu_retention()) {

  prm_write_mod_reg(0xffffffff, CORE_MOD, PM_WKST1);
  prm_write_mod_reg(0xffffffff, CORE_MOD, OMAP24XX_PM_WKST2);
  prm_write_mod_reg(0xffffffff, WKUP_MOD, PM_WKST);


  prm_write_mod_reg((0x01 << OMAP_POWERSTATE_SHIFT) |
      OMAP_LOGICRETSTATE,
      MPU_MOD, PM_PWSTCTRL);
 } else {


  prm_write_mod_reg(OMAP_LOGICRETSTATE, MPU_MOD, PM_PWSTCTRL);
  only_idle = 1;
 }

 if (omap2_pm_debug) {
  omap2_pm_dump(only_idle ? 2 : 1, 0, 0);
  getnstimeofday(&ts_preidle);
 }

 omap2_sram_idle();

 if (omap2_pm_debug) {
  unsigned long long tmp;

  getnstimeofday(&ts_postidle);
  ts_idle = timespec_sub(ts_postidle, ts_preidle);
  tmp = timespec_to_ns(&ts_idle) * NSEC_PER_USEC;
  omap2_pm_dump(only_idle ? 2 : 1, 1, tmp);
 }
}
