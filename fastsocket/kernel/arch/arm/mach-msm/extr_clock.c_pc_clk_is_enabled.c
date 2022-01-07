
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCOM_CLKCTL_RPC_ENABLED ;
 scalar_t__ msm_proc_comm (int ,unsigned int*,int *) ;

__attribute__((used)) static inline unsigned pc_clk_is_enabled(unsigned id)
{
 if (msm_proc_comm(PCOM_CLKCTL_RPC_ENABLED, &id, ((void*)0)))
  return 0;
 else
  return id;
}
