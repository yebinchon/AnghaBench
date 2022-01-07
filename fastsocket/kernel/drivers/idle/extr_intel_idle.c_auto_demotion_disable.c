
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_NHM_SNB_PKG_CST_CFG_CTL ;
 unsigned long long auto_demotion_disable_flags ;
 int rdmsrl (int ,unsigned long long) ;
 int wrmsrl (int ,unsigned long long) ;

__attribute__((used)) static void auto_demotion_disable(void *dummy)
{
 unsigned long long msr_bits;

 rdmsrl(MSR_NHM_SNB_PKG_CST_CFG_CTL, msr_bits);
 msr_bits &= ~auto_demotion_disable_flags;
 wrmsrl(MSR_NHM_SNB_PKG_CST_CFG_CTL, msr_bits);
}
