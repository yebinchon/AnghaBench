
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MIPS_CPU_IRQ_BASE ;
 scalar_t__ MIPS_CPU_RTLX_IRQ ;
 int do_IRQ (scalar_t__) ;

__attribute__((used)) static void rtlx_dispatch(void)
{
 do_IRQ(MIPS_CPU_IRQ_BASE + MIPS_CPU_RTLX_IRQ);
}
