
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int cpu_partnumber ;
 int cpu_silicon_rev ;
 int query_silicon_parameter () ;

int mx27_revision(void)
{
 if (cpu_silicon_rev == -1)
  query_silicon_parameter();

 if (cpu_partnumber != 0x8821)
  return -EINVAL;

 return cpu_silicon_rev;
}
