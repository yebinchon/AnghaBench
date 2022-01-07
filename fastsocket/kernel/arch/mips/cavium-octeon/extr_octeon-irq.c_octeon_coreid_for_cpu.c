
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_logical_map (int) ;
 int cvmx_get_core_num () ;

__attribute__((used)) static int octeon_coreid_for_cpu(int cpu)
{



 return cvmx_get_core_num();

}
