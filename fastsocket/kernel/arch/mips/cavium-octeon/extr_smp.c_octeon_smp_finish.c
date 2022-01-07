
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int mips_hpt_frequency ;
 int octeon_user_io_init () ;
 scalar_t__ read_c0_count () ;
 int write_c0_compare (scalar_t__) ;

__attribute__((used)) static void octeon_smp_finish(void)
{
 octeon_user_io_init();


 write_c0_compare(read_c0_count() + mips_hpt_frequency / HZ);
}
