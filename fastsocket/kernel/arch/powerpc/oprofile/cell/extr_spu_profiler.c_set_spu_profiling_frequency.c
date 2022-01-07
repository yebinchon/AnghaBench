
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SCALE_SHIFT ;
 unsigned int USEC_PER_SEC ;
 int ppc_proc_freq ;
 unsigned long profiling_interval ;

void set_spu_profiling_frequency(unsigned int freq_khz, unsigned int cycles_reset)
{
 unsigned long ns_per_cyc;

 if (!freq_khz)
  freq_khz = ppc_proc_freq/1000;
 ns_per_cyc = (USEC_PER_SEC << SCALE_SHIFT)/freq_khz;
 profiling_interval = (ns_per_cyc * cycles_reset) >> SCALE_SHIFT;

}
