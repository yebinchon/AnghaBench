
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dwarf_reg {unsigned int addr; int flags; } ;
struct dwarf_frame {unsigned long pc; unsigned int cfa_register; unsigned int cfa_offset; unsigned char* cfa_expr; unsigned int cfa_expr_len; int flags; } ;
struct dwarf_fde {int dummy; } ;
struct dwarf_cie {unsigned int code_alignment_factor; unsigned int data_alignment_factor; } ;


 int DWARF_FRAME_CFA_REG_EXP ;
 int DWARF_FRAME_CFA_REG_OFFSET ;
 int DWARF_REG_OFFSET ;
 int DWARF_UNDEFINED ;
 int DWARF_VAL_OFFSET ;
 int DW_CFA_opcode (unsigned char) ;
 unsigned int DW_CFA_operand (unsigned char) ;




 int UNWINDER_BUG () ;
 unsigned char __raw_readb (int ) ;
 struct dwarf_reg* dwarf_frame_alloc_reg (struct dwarf_frame*,unsigned int) ;
 unsigned int dwarf_read_leb128 (unsigned char*,unsigned int*) ;
 unsigned int dwarf_read_uleb128 (unsigned char*,unsigned int*) ;
 unsigned int get_unaligned (int *) ;
 int pr_debug (char*,unsigned char) ;

__attribute__((used)) static int dwarf_cfa_execute_insns(unsigned char *insn_start,
       unsigned char *insn_end,
       struct dwarf_cie *cie,
       struct dwarf_fde *fde,
       struct dwarf_frame *frame,
       unsigned long pc)
{
 unsigned char insn;
 unsigned char *current_insn;
 unsigned int count, delta, reg, expr_len, offset;
 struct dwarf_reg *regp;

 current_insn = insn_start;

 while (current_insn < insn_end && frame->pc <= pc) {
  insn = __raw_readb(current_insn++);





  switch (DW_CFA_opcode(insn)) {
  case 143:
   delta = DW_CFA_operand(insn);
   delta *= cie->code_alignment_factor;
   frame->pc += delta;
   continue;

  case 134:
   reg = DW_CFA_operand(insn);
   count = dwarf_read_uleb128(current_insn, &offset);
   current_insn += count;
   offset *= cie->data_alignment_factor;
   regp = dwarf_frame_alloc_reg(frame, reg);
   regp->addr = offset;
   regp->flags |= DWARF_REG_OFFSET;
   continue;

  case 131:
   reg = DW_CFA_operand(insn);
   continue;

  }





  switch (insn) {
  case 135:
   continue;
  case 142:
   delta = *current_insn++;
   frame->pc += delta * cie->code_alignment_factor;
   break;
  case 141:
   delta = get_unaligned((u16 *)current_insn);
   current_insn += 2;
   frame->pc += delta * cie->code_alignment_factor;
   break;
  case 140:
   delta = get_unaligned((u32 *)current_insn);
   current_insn += 4;
   frame->pc += delta * cie->code_alignment_factor;
   break;
  case 133:
   count = dwarf_read_uleb128(current_insn, &reg);
   current_insn += count;
   count = dwarf_read_uleb128(current_insn, &offset);
   current_insn += count;
   offset *= cie->data_alignment_factor;
   break;
  case 130:
   count = dwarf_read_uleb128(current_insn, &reg);
   current_insn += count;
   break;
  case 129:
   count = dwarf_read_uleb128(current_insn, &reg);
   current_insn += count;
   regp = dwarf_frame_alloc_reg(frame, reg);
   regp->flags |= DWARF_UNDEFINED;
   break;
  case 139:
   count = dwarf_read_uleb128(current_insn,
         &frame->cfa_register);
   current_insn += count;
   count = dwarf_read_uleb128(current_insn,
         &frame->cfa_offset);
   current_insn += count;

   frame->flags |= DWARF_FRAME_CFA_REG_OFFSET;
   break;
  case 136:
   count = dwarf_read_uleb128(current_insn,
         &frame->cfa_register);
   current_insn += count;
   frame->flags |= DWARF_FRAME_CFA_REG_OFFSET;
   break;
  case 137:
   count = dwarf_read_uleb128(current_insn, &offset);
   current_insn += count;
   frame->cfa_offset = offset;
   break;
  case 138:
   count = dwarf_read_uleb128(current_insn, &expr_len);
   current_insn += count;

   frame->cfa_expr = current_insn;
   frame->cfa_expr_len = expr_len;
   current_insn += expr_len;

   frame->flags |= DWARF_FRAME_CFA_REG_EXP;
   break;
  case 132:
   count = dwarf_read_uleb128(current_insn, &reg);
   current_insn += count;
   count = dwarf_read_leb128(current_insn, &offset);
   current_insn += count;
   offset *= cie->data_alignment_factor;
   regp = dwarf_frame_alloc_reg(frame, reg);
   regp->flags |= DWARF_REG_OFFSET;
   regp->addr = offset;
   break;
  case 128:
   count = dwarf_read_uleb128(current_insn, &reg);
   current_insn += count;
   count = dwarf_read_leb128(current_insn, &offset);
   offset *= cie->data_alignment_factor;
   regp = dwarf_frame_alloc_reg(frame, reg);
   regp->flags |= DWARF_VAL_OFFSET;
   regp->addr = offset;
   break;
  case 145:
   count = dwarf_read_uleb128(current_insn, &offset);
   current_insn += count;
   break;
  case 144:
   count = dwarf_read_uleb128(current_insn, &reg);
   current_insn += count;
   count = dwarf_read_uleb128(current_insn, &offset);
   offset *= cie->data_alignment_factor;

   regp = dwarf_frame_alloc_reg(frame, reg);
   regp->flags |= DWARF_REG_OFFSET;
   regp->addr = -offset;
   break;
  default:
   pr_debug("unhandled DWARF instruction 0x%x\n", insn);
   UNWINDER_BUG();
   break;
  }
 }

 return 0;
}
