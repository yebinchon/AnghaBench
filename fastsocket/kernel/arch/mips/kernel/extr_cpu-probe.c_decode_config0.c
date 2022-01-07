
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int isa_level; int options; } ;


 unsigned int MIPS_CONF_AR ;
 unsigned int MIPS_CONF_AT ;
 unsigned int MIPS_CONF_M ;
 unsigned int MIPS_CONF_MT ;
 int MIPS_CPU_ISA_M32R1 ;
 int MIPS_CPU_ISA_M32R2 ;
 int MIPS_CPU_ISA_M64R1 ;
 int MIPS_CPU_ISA_M64R2 ;
 int MIPS_CPU_TLB ;
 int panic (int ,unsigned int) ;
 unsigned int read_c0_config () ;
 int unknown_isa ;

__attribute__((used)) static inline unsigned int decode_config0(struct cpuinfo_mips *c)
{
 unsigned int config0;
 int isa;

 config0 = read_c0_config();

 if (((config0 & MIPS_CONF_MT) >> 7) == 1)
  c->options |= MIPS_CPU_TLB;
 isa = (config0 & MIPS_CONF_AT) >> 13;
 switch (isa) {
 case 0:
  switch ((config0 & MIPS_CONF_AR) >> 10) {
  case 0:
   c->isa_level = MIPS_CPU_ISA_M32R1;
   break;
  case 1:
   c->isa_level = MIPS_CPU_ISA_M32R2;
   break;
  default:
   goto unknown;
  }
  break;
 case 2:
  switch ((config0 & MIPS_CONF_AR) >> 10) {
  case 0:
   c->isa_level = MIPS_CPU_ISA_M64R1;
   break;
  case 1:
   c->isa_level = MIPS_CPU_ISA_M64R2;
   break;
  default:
   goto unknown;
  }
  break;
 default:
  goto unknown;
 }

 return config0 & MIPS_CONF_M;

unknown:
 panic(unknown_isa, config0);
}
