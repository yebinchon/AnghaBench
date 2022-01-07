
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct powernow_k8_data {int currpstate; } ;


 int MSR_PSTATE_CTRL ;
 int wrmsr (int ,int ,int ) ;

__attribute__((used)) static int transition_pstate(struct powernow_k8_data *data, u32 pstate)
{
 wrmsr(MSR_PSTATE_CTRL, pstate, 0);
 data->currpstate = pstate;
 return 0;
}
