
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mpic_teardown_this_cpu (int) ;
 int pseries_kexec_cpu_down (int,int) ;

__attribute__((used)) static void pseries_kexec_cpu_down_mpic(int crash_shutdown, int secondary)
{
 pseries_kexec_cpu_down(crash_shutdown, secondary);
 mpic_teardown_this_cpu(secondary);
}
