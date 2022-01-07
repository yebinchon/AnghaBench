
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union offset_union {int un; } ;
typedef int u32 ;
typedef int u16 ;
struct pt_regs {int dummy; } ;


 int LDST_L_BIT (unsigned long) ;
 int RD_BITS (unsigned long) ;
 int RN_BITS (unsigned long) ;
 void* do_alignment_ldmstm ;
 void* do_alignment_ldrdstrd ;

__attribute__((used)) static void *
do_alignment_t32_to_handler(unsigned long *pinstr, struct pt_regs *regs,
       union offset_union *poffset)
{
 unsigned long instr = *pinstr;
 u16 tinst1 = (instr >> 16) & 0xffff;
 u16 tinst2 = instr & 0xffff;
 poffset->un = 0;

 switch (tinst1 & 0xffe0) {

 case 0xe880:
 case 0xe8a0:
 case 0xe900:
 case 0xe920:

  return do_alignment_ldmstm;

 case 0xf840:
  if (RN_BITS(instr) == 13 && (tinst2 & 0x09ff) == 0x0904) {
   u32 L = !!(LDST_L_BIT(instr));
   const u32 subset[2] = {
    0xe92d0000,
    0xe8bd0000,
   };
   *pinstr = subset[L] | (1<<RD_BITS(instr));
   return do_alignment_ldmstm;
  }

  break;


 case 0xe860:
 case 0xe960:
 case 0xe8e0:
 case 0xe9e0:
  poffset->un = (tinst2 & 0xff) << 2;
 case 0xe940:
 case 0xe9c0:
  return do_alignment_ldrdstrd;





 default:
  break;
 }
 return ((void*)0);
}
