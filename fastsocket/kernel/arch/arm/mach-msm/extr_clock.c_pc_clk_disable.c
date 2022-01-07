
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCOM_CLKCTL_RPC_DISABLE ;
 int msm_proc_comm (int ,unsigned int*,int *) ;

__attribute__((used)) static inline void pc_clk_disable(unsigned id)
{
 msm_proc_comm(PCOM_CLKCTL_RPC_DISABLE, &id, ((void*)0));
}
