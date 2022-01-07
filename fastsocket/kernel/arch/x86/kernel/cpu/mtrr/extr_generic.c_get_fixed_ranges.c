
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mtrr_type ;


 scalar_t__ MSR_MTRRfix16K_80000 ;
 scalar_t__ MSR_MTRRfix4K_C0000 ;
 scalar_t__ MSR_MTRRfix64K_00000 ;
 int k8_check_syscfg_dram_mod_en () ;
 int rdmsr (scalar_t__,unsigned int,unsigned int) ;

__attribute__((used)) static void get_fixed_ranges(mtrr_type *frs)
{
 unsigned int *p = (unsigned int *)frs;
 int i;

 k8_check_syscfg_dram_mod_en();

 rdmsr(MSR_MTRRfix64K_00000, p[0], p[1]);

 for (i = 0; i < 2; i++)
  rdmsr(MSR_MTRRfix16K_80000 + i, p[2 + i * 2], p[3 + i * 2]);
 for (i = 0; i < 8; i++)
  rdmsr(MSR_MTRRfix4K_C0000 + i, p[6 + i * 2], p[7 + i * 2]);
}
