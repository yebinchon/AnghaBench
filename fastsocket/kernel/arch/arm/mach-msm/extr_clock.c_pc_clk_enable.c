
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCOM_CLKCTL_RPC_ENABLE ;
 int msm_proc_comm (int ,unsigned int*,int *) ;

__attribute__((used)) static inline int pc_clk_enable(unsigned id)
{
 return msm_proc_comm(PCOM_CLKCTL_RPC_ENABLE, &id, ((void*)0));
}
