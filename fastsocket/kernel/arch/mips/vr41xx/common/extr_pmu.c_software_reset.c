
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int CONF_CM_CMASK ;
 int CONF_CM_UNCACHED ;



 int PMUCNT2REG ;
 int SOFTRST ;
 int ST0_BEV ;
 int ST0_ERL ;
 int change_c0_config (int ,int ) ;
 int current_cpu_type () ;
 int flush_cache_all () ;
 int pmu_read (int ) ;
 int pmu_write (int ,int ) ;
 int set_c0_status (int) ;
 int write_c0_wired (int ) ;

__attribute__((used)) static inline void software_reset(void)
{
 uint16_t pmucnt2;

 switch (current_cpu_type()) {
 case 130:
 case 129:
 case 128:
  pmucnt2 = pmu_read(PMUCNT2REG);
  pmucnt2 |= SOFTRST;
  pmu_write(PMUCNT2REG, pmucnt2);
  break;
 default:
  set_c0_status(ST0_BEV | ST0_ERL);
  change_c0_config(CONF_CM_CMASK, CONF_CM_UNCACHED);
  flush_cache_all();
  write_c0_wired(0);
  __asm__("jr     %0"::"r"(0xbfc00000));
  break;
 }
}
