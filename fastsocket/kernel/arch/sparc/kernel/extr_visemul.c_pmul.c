
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pt_regs {int dummy; } ;
struct fpustate {int dummy; } ;
typedef int s16 ;
 struct fpustate* FPUSTATE ;
 int RD (unsigned int) ;
 int RS1 (unsigned int) ;
 int RS2 (unsigned int) ;
 unsigned long* fpd_regaddr (struct fpustate*,int ) ;
 unsigned long fpd_regval (struct fpustate*,int ) ;
 unsigned long fps_regval (struct fpustate*,int ) ;

__attribute__((used)) static void pmul(struct pt_regs *regs, unsigned int insn, unsigned int opf)
{
 struct fpustate *f = FPUSTATE;
 unsigned long rs1, rs2, rd_val;

 switch (opf) {
 case 130: {
  unsigned long byte;

  rs1 = fps_regval(f, RS1(insn));
  rs2 = fpd_regval(f, RS2(insn));

  rd_val = 0;
  for (byte = 0; byte < 4; byte++) {
   u16 src1 = (rs1 >> (byte * 8)) & 0x00ff;
   s16 src2 = (rs2 >> (byte * 16)) & 0xffff;
   u32 prod = src1 * src2;
   u16 scaled = ((prod & 0x00ffff00) >> 8);


   if (prod & 0x80)
    scaled++;
   rd_val |= ((scaled & 0xffffUL) << (byte * 16UL));
  }

  *fpd_regaddr(f, RD(insn)) = rd_val;
  break;
 }

 case 131:
 case 132: {
  unsigned long byte;
  s16 src2;

  rs1 = fps_regval(f, RS1(insn));
  rs2 = fps_regval(f, RS2(insn));

  rd_val = 0;
  src2 = rs2 >> (opf == 131 ? 16 : 0);
  for (byte = 0; byte < 4; byte++) {
   u16 src1 = (rs1 >> (byte * 8)) & 0x00ff;
   u32 prod = src1 * src2;
   u16 scaled = ((prod & 0x00ffff00) >> 8);


   if (prod & 0x80)
    scaled++;
   rd_val |= ((scaled & 0xffffUL) << (byte * 16UL));
  }

  *fpd_regaddr(f, RD(insn)) = rd_val;
  break;
 }

 case 134:
 case 133: {
  unsigned long byte, ushift;

  rs1 = fpd_regval(f, RS1(insn));
  rs2 = fpd_regval(f, RS2(insn));

  rd_val = 0;
  ushift = (opf == 134) ? 8 : 0;
  for (byte = 0; byte < 4; byte++) {
   u16 src1;
   s16 src2;
   u32 prod;
   u16 scaled;

   src1 = ((rs1 >> ((16 * byte) + ushift)) & 0x00ff);
   src2 = ((rs2 >> (16 * byte)) & 0xffff);
   prod = src1 * src2;
   scaled = ((prod & 0x00ffff00) >> 8);


   if (prod & 0x80)
    scaled++;
   rd_val |= ((scaled & 0xffffUL) << (byte * 16UL));
  }

  *fpd_regaddr(f, RD(insn)) = rd_val;
  break;
 }

 case 129:
 case 128: {
  unsigned long byte, ushift;

  rs1 = fps_regval(f, RS1(insn));
  rs2 = fps_regval(f, RS2(insn));

  rd_val = 0;
  ushift = (opf == 129) ? 8 : 0;
  for (byte = 0; byte < 2; byte++) {
   u16 src1;
   s16 src2;
   u32 prod;
   u16 scaled;

   src1 = ((rs1 >> ((16 * byte) + ushift)) & 0x00ff);
   src2 = ((rs2 >> (16 * byte)) & 0xffff);
   prod = src1 * src2;
   scaled = ((prod & 0x00ffff00) >> 8);


   if (prod & 0x80)
    scaled++;
   rd_val |= ((scaled & 0xffffUL) <<
       ((byte * 32UL) + 7UL));
  }
  *fpd_regaddr(f, RD(insn)) = rd_val;
  break;
 }
 };
}
