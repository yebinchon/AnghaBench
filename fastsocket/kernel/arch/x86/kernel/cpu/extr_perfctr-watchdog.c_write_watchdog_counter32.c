
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 scalar_t__ cpu_khz ;
 int do_div (int,unsigned int) ;
 int pr_debug (char*,char const*,int) ;
 int wrmsr (unsigned int,int ,int ) ;

__attribute__((used)) static void write_watchdog_counter32(unsigned int perfctr_msr,
    const char *descr, unsigned nmi_hz)
{
 u64 count = (u64)cpu_khz * 1000;

 do_div(count, nmi_hz);
 if (descr)
  pr_debug("setting %s to -0x%08Lx\n", descr, count);
 wrmsr(perfctr_msr, (u32)(-count), 0);
}
