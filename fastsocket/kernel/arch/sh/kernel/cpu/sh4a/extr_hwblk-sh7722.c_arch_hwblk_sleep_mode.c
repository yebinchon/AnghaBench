
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cnt; } ;


 size_t CORE_AREA ;
 size_t CORE_AREA_BM ;
 size_t HWBLK_CNT_USAGE ;
 int SUSP_SH_SF ;
 int SUSP_SH_SLEEP ;
 int SUSP_SH_STANDBY ;
 TYPE_1__* sh7722_hwblk_area ;

int arch_hwblk_sleep_mode(void)
{
 if (!sh7722_hwblk_area[CORE_AREA].cnt[HWBLK_CNT_USAGE])
  return SUSP_SH_STANDBY | SUSP_SH_SF;

 if (!sh7722_hwblk_area[CORE_AREA_BM].cnt[HWBLK_CNT_USAGE])
  return SUSP_SH_SLEEP | SUSP_SH_SF;

 return SUSP_SH_SLEEP;
}
