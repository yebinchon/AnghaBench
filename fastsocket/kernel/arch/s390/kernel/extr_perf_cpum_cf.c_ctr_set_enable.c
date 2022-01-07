
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CPUMF_LCCTL_ENABLE_SHIFT ;
 int* cpumf_state_ctl ;

__attribute__((used)) static void ctr_set_enable(u64 *state, int ctr_set)
{
 *state |= cpumf_state_ctl[ctr_set] << CPUMF_LCCTL_ENABLE_SHIFT;
}
