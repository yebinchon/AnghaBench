
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ips_driver {int cpu_turbo_enabled; int gpu_turbo_enabled; void* mcp_power_limit; void* mcp_temp_limit; void* mch_power_limit; void* core_power_limit; scalar_t__ gpu_busy; } ;


 int HTS_GTD_DIS ;
 int HTS_PCTD_DIS ;
 int THM_HTS ;
 int THM_MMGPC ;
 int THM_MPCPC ;
 int THM_MPPC ;
 int THM_PTL ;
 int thm_readl (int ) ;
 void* thm_readw (int ) ;
 int verify_limits (struct ips_driver*) ;

__attribute__((used)) static void update_turbo_limits(struct ips_driver *ips)
{
 u32 hts = thm_readl(THM_HTS);

 ips->cpu_turbo_enabled = !(hts & HTS_PCTD_DIS);




 ips->cpu_turbo_enabled = 0;

 if (ips->gpu_busy)
  ips->gpu_turbo_enabled = !(hts & HTS_GTD_DIS);

 ips->core_power_limit = thm_readw(THM_MPCPC);
 ips->mch_power_limit = thm_readw(THM_MMGPC);
 ips->mcp_temp_limit = thm_readw(THM_PTL);
 ips->mcp_power_limit = thm_readw(THM_MPPC);

 verify_limits(ips);

}
