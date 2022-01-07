
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPUCR ;
 int ENODEV ;
 int sysreg_read (int ) ;
 int sysreg_write (int ,int) ;

__attribute__((used)) static int do_cop_absent(u32 insn)
{
 int cop_nr;
 u32 cpucr;

 if ((insn & 0xfdf00000) == 0xf1900000)

  cop_nr = 0;
 else
  cop_nr = (insn >> 13) & 0x7;


 cpucr = sysreg_read(CPUCR);
 cpucr |= (1 << (24 + cop_nr));
 sysreg_write(CPUCR, cpucr);

 cpucr = sysreg_read(CPUCR);
 if (!(cpucr & (1 << (24 + cop_nr))))
  return -ENODEV;

 return 0;
}
