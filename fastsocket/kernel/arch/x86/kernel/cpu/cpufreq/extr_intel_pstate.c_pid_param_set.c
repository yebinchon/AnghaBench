
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int intel_pstate_reset_all_pid () ;

__attribute__((used)) static int pid_param_set(void *data, u64 val)
{
 *(u32 *)data = val;
 intel_pstate_reset_all_pid();
 return 0;
}
