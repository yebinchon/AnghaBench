
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int PMAC_FTR_SLEEP_STATE ;
 scalar_t__ PMU_KEYLARGO_BASED ;
 int option_lid_wakeup ;
 int option_server_mode ;
 scalar_t__ pmac_call_feature (int ,int *,int ,int) ;
 scalar_t__ pmu_kind ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
proc_read_options(char *page, char **start, off_t off,
   int count, int *eof, void *data)
{
 char *p = page;






 if (pmu_kind == PMU_KEYLARGO_BASED)
  p += sprintf(p, "server_mode=%d\n", option_server_mode);

 return p - page;
}
