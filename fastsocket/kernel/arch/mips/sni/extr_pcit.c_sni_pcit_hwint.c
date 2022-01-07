
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int C_IRQ1 ;
 int C_IRQ2 ;
 int C_IRQ3 ;
 int C_IRQ5 ;
 scalar_t__ MIPS_CPU_IRQ_BASE ;
 int do_IRQ (scalar_t__) ;
 int pcit_hwint1 () ;
 int read_c0_cause () ;
 int read_c0_status () ;

__attribute__((used)) static void sni_pcit_hwint(void)
{
 u32 pending = read_c0_cause() & read_c0_status();

 if (pending & C_IRQ1)
  pcit_hwint1();
 else if (pending & C_IRQ2)
  do_IRQ(MIPS_CPU_IRQ_BASE + 4);
 else if (pending & C_IRQ3)
  do_IRQ(MIPS_CPU_IRQ_BASE + 5);
 else if (pending & C_IRQ5)
  do_IRQ(MIPS_CPU_IRQ_BASE + 7);
}
