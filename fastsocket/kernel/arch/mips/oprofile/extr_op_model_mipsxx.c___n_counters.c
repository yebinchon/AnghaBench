
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_CONFIG1_PC ;
 int M_PERFCTL_MORE ;
 int read_c0_config1 () ;
 int read_c0_perfctrl0 () ;
 int read_c0_perfctrl1 () ;
 int read_c0_perfctrl2 () ;

__attribute__((used)) static inline int __n_counters(void)
{
 if (!(read_c0_config1() & M_CONFIG1_PC))
  return 0;
 if (!(read_c0_perfctrl0() & M_PERFCTL_MORE))
  return 1;
 if (!(read_c0_perfctrl1() & M_PERFCTL_MORE))
  return 2;
 if (!(read_c0_perfctrl2() & M_PERFCTL_MORE))
  return 3;

 return 4;
}
