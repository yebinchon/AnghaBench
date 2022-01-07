
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCOM_CLKCTL_RPC_RATE ;
 scalar_t__ msm_proc_comm (int ,unsigned int*,int *) ;

__attribute__((used)) static inline unsigned pc_clk_get_rate(unsigned id)
{
 if (msm_proc_comm(PCOM_CLKCTL_RPC_RATE, &id, ((void*)0)))
  return 0;
 else
  return id;
}
