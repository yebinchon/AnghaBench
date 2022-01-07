
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCOM_CLKCTL_RPC_SET_RATE ;
 int msm_proc_comm (int ,unsigned int*,unsigned int*) ;

__attribute__((used)) static inline int pc_clk_set_rate(unsigned id, unsigned rate)
{
 return msm_proc_comm(PCOM_CLKCTL_RPC_SET_RATE, &id, &rate);
}
