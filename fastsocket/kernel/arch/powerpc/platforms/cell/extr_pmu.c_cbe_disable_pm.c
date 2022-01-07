
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CBE_PM_ENABLE_PERF_MON ;
 int cbe_read_pm (int,int ) ;
 int cbe_write_pm (int,int ,int) ;
 int pm_control ;

void cbe_disable_pm(u32 cpu)
{
 u32 pm_ctrl;
 pm_ctrl = cbe_read_pm(cpu, pm_control) & ~CBE_PM_ENABLE_PERF_MON;
 cbe_write_pm(cpu, pm_control, pm_ctrl);
}
