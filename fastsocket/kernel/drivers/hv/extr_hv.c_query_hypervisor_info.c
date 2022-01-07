
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HVCPUID_VENDOR_MAXFUNCTION ;
 unsigned int HVCPUID_VERSION ;
 int cpuid (unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 unsigned int host_info_eax ;
 unsigned int host_info_ebx ;
 unsigned int host_info_ecx ;
 unsigned int host_info_edx ;

__attribute__((used)) static int query_hypervisor_info(void)
{
 unsigned int eax;
 unsigned int ebx;
 unsigned int ecx;
 unsigned int edx;
 unsigned int max_leaf;
 unsigned int op;





 eax = 0;
 ebx = 0;
 ecx = 0;
 edx = 0;
 op = HVCPUID_VENDOR_MAXFUNCTION;
 cpuid(op, &eax, &ebx, &ecx, &edx);

 max_leaf = eax;

 if (max_leaf >= HVCPUID_VERSION) {
  eax = 0;
  ebx = 0;
  ecx = 0;
  edx = 0;
  op = HVCPUID_VERSION;
  cpuid(op, &eax, &ebx, &ecx, &edx);
  host_info_eax = eax;
  host_info_ebx = ebx;
  host_info_ecx = ecx;
  host_info_edx = edx;
 }
 return max_leaf;
}
