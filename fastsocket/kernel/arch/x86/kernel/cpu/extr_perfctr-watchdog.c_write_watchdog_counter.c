
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ cpu_khz ;
 int do_div (int,unsigned int) ;
 int pr_debug (char*,char const*,int) ;
 int wrmsrl (unsigned int,int) ;

__attribute__((used)) static void write_watchdog_counter(unsigned int perfctr_msr,
    const char *descr, unsigned nmi_hz)
{
 u64 count = (u64)cpu_khz * 1000;

 do_div(count, nmi_hz);
 if (descr)
  pr_debug("setting %s to -0x%08Lx\n", descr, count);
 wrmsrl(perfctr_msr, 0 - count);
}
