
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int marvel_cpuid_to_nid (int) ;

int
marvel_pa_to_nid(unsigned long pa)
{
 int cpuid;

 if ((pa >> 43) & 1)
  cpuid = (~(pa >> 35) & 0xff);
 else
  cpuid = ((pa >> 34) & 0x3) | ((pa >> (37 - 2)) & (0x1f << 2));

 return marvel_cpuid_to_nid(cpuid);
}
