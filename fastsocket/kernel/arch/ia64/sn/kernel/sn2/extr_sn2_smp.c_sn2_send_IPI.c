
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long cpu_physical_id (int) ;
 int cpuid_to_nasid (int) ;
 int ia64_sn_get_sapic_info (long,int*,int *,int *) ;
 int sn_send_IPI_phys (int,long,int,int) ;
 scalar_t__ unlikely (int) ;

void sn2_send_IPI(int cpuid, int vector, int delivery_mode, int redirect)
{
 long physid;
 int nasid;

 physid = cpu_physical_id(cpuid);
 nasid = cpuid_to_nasid(cpuid);


 if (unlikely(nasid == -1))
  ia64_sn_get_sapic_info(physid, &nasid, ((void*)0), ((void*)0));

 sn_send_IPI_phys(nasid, physid, vector, delivery_mode);
}
