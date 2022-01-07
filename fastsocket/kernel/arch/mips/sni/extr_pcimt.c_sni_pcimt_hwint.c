
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int C_IRQ0 ;
 int C_IRQ1 ;
 int C_IRQ3 ;
 int C_IRQ4 ;
 int C_IRQ5 ;
 scalar_t__ MIPS_CPU_IRQ_BASE ;
 int do_IRQ (scalar_t__) ;
 int pcimt_hwint0 () ;
 int pcimt_hwint1 () ;
 int pcimt_hwint3 () ;
 int read_c0_cause () ;
 int read_c0_status () ;

__attribute__((used)) static void sni_pcimt_hwint(void)
{
 u32 pending = read_c0_cause() & read_c0_status();

 if (pending & C_IRQ5)
  do_IRQ(MIPS_CPU_IRQ_BASE + 7);
 else if (pending & C_IRQ4)
  do_IRQ(MIPS_CPU_IRQ_BASE + 6);
 else if (pending & C_IRQ3)
  pcimt_hwint3();
 else if (pending & C_IRQ1)
  pcimt_hwint1();
 else if (pending & C_IRQ0) {
  pcimt_hwint0();
 }
}
