
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {size_t ph_data; } ;
typedef TYPE_1__ pal_hints_u_t ;


 size_t RSE_HINTS_COUNT ;
 char* bitregister_process (char*,int*,int) ;
 scalar_t__ ia64_pal_debug_info (unsigned long*,unsigned long*) ;
 scalar_t__ ia64_pal_register_info (int,int*,int*) ;
 scalar_t__ ia64_pal_rse_info (unsigned long*,TYPE_1__*) ;
 char** rse_hints ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int
register_info(char *page)
{
 char *p = page;
 u64 reg_info[2];
 u64 info;
 unsigned long phys_stacked;
 pal_hints_u_t hints;
 unsigned long iregs, dregs;
 char *info_type[]={
  "Implemented AR(s)",
  "AR(s) with read side-effects",
  "Implemented CR(s)",
  "CR(s) with read side-effects",
 };

 for(info=0; info < 4; info++) {

  if (ia64_pal_register_info(info, &reg_info[0], &reg_info[1]) != 0) return 0;

  p += sprintf(p, "%-32s : ", info_type[info]);

  p = bitregister_process(p, reg_info, 128);

  p += sprintf(p, "\n");
 }

 if (ia64_pal_rse_info(&phys_stacked, &hints) == 0) {

 p += sprintf(p,
       "RSE stacked physical registers   : %ld\n"
       "RSE load/store hints             : %ld (%s)\n",
       phys_stacked, hints.ph_data,
       hints.ph_data < RSE_HINTS_COUNT ? rse_hints[hints.ph_data]: "(??)");
 }
 if (ia64_pal_debug_info(&iregs, &dregs))
  return 0;

 p += sprintf(p,
       "Instruction debug register pairs : %ld\n"
       "Data debug register pairs        : %ld\n", iregs, dregs);

 return p - page;
}
