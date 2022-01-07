
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int generic; int width; int cycles; int retired; } ;
struct TYPE_5__ {TYPE_1__ pal_perf_mon_info_s; } ;
typedef TYPE_2__ pal_perf_mon_info_u_t ;


 char* bitregister_process (char*,int*,int) ;
 scalar_t__ ia64_pal_perf_mon_info (int*,TYPE_2__*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int
perfmon_info(char *page)
{
 char *p = page;
 u64 pm_buffer[16];
 pal_perf_mon_info_u_t pm_info;

 if (ia64_pal_perf_mon_info(pm_buffer, &pm_info) != 0) return 0;

 p += sprintf(p,
       "PMC/PMD pairs                 : %d\n"
       "Counter width                 : %d bits\n"
       "Cycle event number            : %d\n"
       "Retired event number          : %d\n"
       "Implemented PMC               : ",
       pm_info.pal_perf_mon_info_s.generic, pm_info.pal_perf_mon_info_s.width,
       pm_info.pal_perf_mon_info_s.cycles, pm_info.pal_perf_mon_info_s.retired);

 p = bitregister_process(p, pm_buffer, 256);
 p += sprintf(p, "\nImplemented PMD               : ");
 p = bitregister_process(p, pm_buffer+4, 256);
 p += sprintf(p, "\nCycles count capable          : ");
 p = bitregister_process(p, pm_buffer+8, 256);
 p += sprintf(p, "\nRetired bundles count capable : ");
 p = bitregister_process(p, pm_buffer+12, 256);

 p += sprintf(p, "\n");

 return p - page;
}
