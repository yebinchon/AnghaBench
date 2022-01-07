
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_get_core_num () ;
 int pr_err (char*,int const,unsigned long long) ;
 unsigned long long read_c0_cvmmemctl () ;
 unsigned long long read_octeon_c0_dcacheerr () ;
 unsigned long long read_octeon_c0_icacheerr () ;
 int write_octeon_c0_dcacheerr (int ) ;

void octeon_check_cpu_bist(void)
{
 const int coreid = cvmx_get_core_num();
 unsigned long long mask;
 unsigned long long bist_val;


 mask = 0x1f00000000ull;
 bist_val = read_octeon_c0_icacheerr();
 if (bist_val & mask)
  pr_err("Core%d BIST Failure: CacheErr(icache) = 0x%llx\n",
         coreid, bist_val);

 bist_val = read_octeon_c0_dcacheerr();
 if (bist_val & 1)
  pr_err("Core%d L1 Dcache parity error: "
         "CacheErr(dcache) = 0x%llx\n",
         coreid, bist_val);

 mask = 0xfc00000000000000ull;
 bist_val = read_c0_cvmmemctl();
 if (bist_val & mask)
  pr_err("Core%d BIST Failure: COP0_CVM_MEM_CTL = 0x%llx\n",
         coreid, bist_val);

 write_octeon_c0_dcacheerr(0);
}
