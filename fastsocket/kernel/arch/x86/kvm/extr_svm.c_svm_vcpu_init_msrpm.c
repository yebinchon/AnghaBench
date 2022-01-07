
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSRPM_ALLOC_ORDER ;
 int MSR_CSTAR ;
 int MSR_FS_BASE ;
 int MSR_GS_BASE ;
 int MSR_IA32_SYSENTER_CS ;
 int MSR_K6_STAR ;
 int MSR_KERNEL_GS_BASE ;
 int MSR_LSTAR ;
 int MSR_SYSCALL_MASK ;
 int PAGE_SIZE ;
 int memset (int *,int,int) ;
 int set_msr_interception (int *,int ,int,int) ;

__attribute__((used)) static void svm_vcpu_init_msrpm(u32 *msrpm)
{
 memset(msrpm, 0xff, PAGE_SIZE * (1 << MSRPM_ALLOC_ORDER));
 set_msr_interception(msrpm, MSR_K6_STAR, 1, 1);
 set_msr_interception(msrpm, MSR_IA32_SYSENTER_CS, 1, 1);
}
