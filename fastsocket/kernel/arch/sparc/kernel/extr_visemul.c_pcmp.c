
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct fpustate {int dummy; } ;
typedef unsigned long s32 ;
typedef unsigned long s16 ;
 struct fpustate* FPUSTATE ;
 int RD (unsigned int) ;
 int RS1 (unsigned int) ;
 int RS2 (unsigned int) ;
 unsigned long fpd_regval (struct fpustate*,int ) ;
 int maybe_flush_windows (int ,int ,int ,int ) ;
 int store_reg (struct pt_regs*,unsigned long,int ) ;

__attribute__((used)) static void pcmp(struct pt_regs *regs, unsigned int insn, unsigned int opf)
{
 struct fpustate *f = FPUSTATE;
 unsigned long rs1, rs2, rd_val, i;

 rs1 = fpd_regval(f, RS1(insn));
 rs2 = fpd_regval(f, RS2(insn));

 rd_val = 0;

 switch (opf) {
 case 133:
  for (i = 0; i < 4; i++) {
   s16 a = (rs1 >> (i * 16)) & 0xffff;
   s16 b = (rs2 >> (i * 16)) & 0xffff;

   if (a > b)
    rd_val |= 1 << i;
  }
  break;

 case 132:
  for (i = 0; i < 2; i++) {
   s32 a = (rs1 >> (i * 32)) & 0xffff;
   s32 b = (rs2 >> (i * 32)) & 0xffff;

   if (a > b)
    rd_val |= 1 << i;
  }
  break;

 case 131:
  for (i = 0; i < 4; i++) {
   s16 a = (rs1 >> (i * 16)) & 0xffff;
   s16 b = (rs2 >> (i * 16)) & 0xffff;

   if (a <= b)
    rd_val |= 1 << i;
  }
  break;

 case 130:
  for (i = 0; i < 2; i++) {
   s32 a = (rs1 >> (i * 32)) & 0xffff;
   s32 b = (rs2 >> (i * 32)) & 0xffff;

   if (a <= b)
    rd_val |= 1 << i;
  }
  break;

 case 129:
  for (i = 0; i < 4; i++) {
   s16 a = (rs1 >> (i * 16)) & 0xffff;
   s16 b = (rs2 >> (i * 16)) & 0xffff;

   if (a != b)
    rd_val |= 1 << i;
  }
  break;

 case 128:
  for (i = 0; i < 2; i++) {
   s32 a = (rs1 >> (i * 32)) & 0xffff;
   s32 b = (rs2 >> (i * 32)) & 0xffff;

   if (a != b)
    rd_val |= 1 << i;
  }
  break;

 case 135:
  for (i = 0; i < 4; i++) {
   s16 a = (rs1 >> (i * 16)) & 0xffff;
   s16 b = (rs2 >> (i * 16)) & 0xffff;

   if (a == b)
    rd_val |= 1 << i;
  }
  break;

 case 134:
  for (i = 0; i < 2; i++) {
   s32 a = (rs1 >> (i * 32)) & 0xffff;
   s32 b = (rs2 >> (i * 32)) & 0xffff;

   if (a == b)
    rd_val |= 1 << i;
  }
  break;
 };

 maybe_flush_windows(0, 0, RD(insn), 0);
 store_reg(regs, rd_val, RD(insn));
}
