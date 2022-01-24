#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct dwarf_reg {unsigned int addr; int /*<<< orphan*/  flags; } ;
struct dwarf_frame {unsigned long pc; unsigned int cfa_register; unsigned int cfa_offset; unsigned char* cfa_expr; unsigned int cfa_expr_len; int /*<<< orphan*/  flags; } ;
struct dwarf_fde {int dummy; } ;
struct dwarf_cie {unsigned int code_alignment_factor; unsigned int data_alignment_factor; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWARF_FRAME_CFA_REG_EXP ; 
 int /*<<< orphan*/  DWARF_FRAME_CFA_REG_OFFSET ; 
 int /*<<< orphan*/  DWARF_REG_OFFSET ; 
 int /*<<< orphan*/  DWARF_UNDEFINED ; 
 int /*<<< orphan*/  DWARF_VAL_OFFSET ; 
#define  DW_CFA_GNU_args_size 145 
#define  DW_CFA_GNU_negative_offset_extended 144 
#define  DW_CFA_advance_loc 143 
#define  DW_CFA_advance_loc1 142 
#define  DW_CFA_advance_loc2 141 
#define  DW_CFA_advance_loc4 140 
#define  DW_CFA_def_cfa 139 
#define  DW_CFA_def_cfa_expression 138 
#define  DW_CFA_def_cfa_offset 137 
#define  DW_CFA_def_cfa_register 136 
#define  DW_CFA_nop 135 
#define  DW_CFA_offset 134 
#define  DW_CFA_offset_extended 133 
#define  DW_CFA_offset_extended_sf 132 
 int FUNC0 (unsigned char) ; 
 unsigned int FUNC1 (unsigned char) ; 
#define  DW_CFA_restore 131 
#define  DW_CFA_restore_extended 130 
#define  DW_CFA_undefined 129 
#define  DW_CFA_val_offset 128 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ) ; 
 struct dwarf_reg* FUNC4 (struct dwarf_frame*,unsigned int) ; 
 unsigned int FUNC5 (unsigned char*,unsigned int*) ; 
 unsigned int FUNC6 (unsigned char*,unsigned int*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned char) ; 

__attribute__((used)) static int FUNC9(unsigned char *insn_start,
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
		insn = FUNC3(current_insn++);

		/*
		 * Firstly, handle the opcodes that embed their operands
		 * in the instructions.
		 */
		switch (FUNC0(insn)) {
		case DW_CFA_advance_loc:
			delta = FUNC1(insn);
			delta *= cie->code_alignment_factor;
			frame->pc += delta;
			continue;
			/* NOTREACHED */
		case DW_CFA_offset:
			reg = FUNC1(insn);
			count = FUNC6(current_insn, &offset);
			current_insn += count;
			offset *= cie->data_alignment_factor;
			regp = FUNC4(frame, reg);
			regp->addr = offset;
			regp->flags |= DWARF_REG_OFFSET;
			continue;
			/* NOTREACHED */
		case DW_CFA_restore:
			reg = FUNC1(insn);
			continue;
			/* NOTREACHED */
		}

		/*
		 * Secondly, handle the opcodes that don't embed their
		 * operands in the instruction.
		 */
		switch (insn) {
		case DW_CFA_nop:
			continue;
		case DW_CFA_advance_loc1:
			delta = *current_insn++;
			frame->pc += delta * cie->code_alignment_factor;
			break;
		case DW_CFA_advance_loc2:
			delta = FUNC7((u16 *)current_insn);
			current_insn += 2;
			frame->pc += delta * cie->code_alignment_factor;
			break;
		case DW_CFA_advance_loc4:
			delta = FUNC7((u32 *)current_insn);
			current_insn += 4;
			frame->pc += delta * cie->code_alignment_factor;
			break;
		case DW_CFA_offset_extended:
			count = FUNC6(current_insn, &reg);
			current_insn += count;
			count = FUNC6(current_insn, &offset);
			current_insn += count;
			offset *= cie->data_alignment_factor;
			break;
		case DW_CFA_restore_extended:
			count = FUNC6(current_insn, &reg);
			current_insn += count;
			break;
		case DW_CFA_undefined:
			count = FUNC6(current_insn, &reg);
			current_insn += count;
			regp = FUNC4(frame, reg);
			regp->flags |= DWARF_UNDEFINED;
			break;
		case DW_CFA_def_cfa:
			count = FUNC6(current_insn,
						   &frame->cfa_register);
			current_insn += count;
			count = FUNC6(current_insn,
						   &frame->cfa_offset);
			current_insn += count;

			frame->flags |= DWARF_FRAME_CFA_REG_OFFSET;
			break;
		case DW_CFA_def_cfa_register:
			count = FUNC6(current_insn,
						   &frame->cfa_register);
			current_insn += count;
			frame->flags |= DWARF_FRAME_CFA_REG_OFFSET;
			break;
		case DW_CFA_def_cfa_offset:
			count = FUNC6(current_insn, &offset);
			current_insn += count;
			frame->cfa_offset = offset;
			break;
		case DW_CFA_def_cfa_expression:
			count = FUNC6(current_insn, &expr_len);
			current_insn += count;

			frame->cfa_expr = current_insn;
			frame->cfa_expr_len = expr_len;
			current_insn += expr_len;

			frame->flags |= DWARF_FRAME_CFA_REG_EXP;
			break;
		case DW_CFA_offset_extended_sf:
			count = FUNC6(current_insn, &reg);
			current_insn += count;
			count = FUNC5(current_insn, &offset);
			current_insn += count;
			offset *= cie->data_alignment_factor;
			regp = FUNC4(frame, reg);
			regp->flags |= DWARF_REG_OFFSET;
			regp->addr = offset;
			break;
		case DW_CFA_val_offset:
			count = FUNC6(current_insn, &reg);
			current_insn += count;
			count = FUNC5(current_insn, &offset);
			offset *= cie->data_alignment_factor;
			regp = FUNC4(frame, reg);
			regp->flags |= DWARF_VAL_OFFSET;
			regp->addr = offset;
			break;
		case DW_CFA_GNU_args_size:
			count = FUNC6(current_insn, &offset);
			current_insn += count;
			break;
		case DW_CFA_GNU_negative_offset_extended:
			count = FUNC6(current_insn, &reg);
			current_insn += count;
			count = FUNC6(current_insn, &offset);
			offset *= cie->data_alignment_factor;

			regp = FUNC4(frame, reg);
			regp->flags |= DWARF_REG_OFFSET;
			regp->addr = -offset;
			break;
		default:
			FUNC8("unhandled DWARF instruction 0x%x\n", insn);
			FUNC2();
			break;
		}
	}

	return 0;
}