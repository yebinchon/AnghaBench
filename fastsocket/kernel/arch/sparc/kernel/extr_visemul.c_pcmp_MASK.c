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
struct pt_regs {int dummy; } ;
struct fpustate {int dummy; } ;
typedef  unsigned long s32 ;
typedef  unsigned long s16 ;

/* Variables and functions */
#define  FCMPEQ16_OPF 135 
#define  FCMPEQ32_OPF 134 
#define  FCMPGT16_OPF 133 
#define  FCMPGT32_OPF 132 
#define  FCMPLE16_OPF 131 
#define  FCMPLE32_OPF 130 
#define  FCMPNE16_OPF 129 
#define  FCMPNE32_OPF 128 
 struct fpustate* FPUSTATE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (struct fpustate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pt_regs *regs, unsigned int insn, unsigned int opf)
{
	struct fpustate *f = FPUSTATE;
	unsigned long rs1, rs2, rd_val, i;

	rs1 = FUNC3(f, FUNC1(insn));
	rs2 = FUNC3(f, FUNC2(insn));

	rd_val = 0;

	switch (opf) {
	case FCMPGT16_OPF:
		for (i = 0; i < 4; i++) {
			s16 a = (rs1 >> (i * 16)) & 0xffff;
			s16 b = (rs2 >> (i * 16)) & 0xffff;

			if (a > b)
				rd_val |= 1 << i;
		}
		break;

	case FCMPGT32_OPF:
		for (i = 0; i < 2; i++) {
			s32 a = (rs1 >> (i * 32)) & 0xffff;
			s32 b = (rs2 >> (i * 32)) & 0xffff;

			if (a > b)
				rd_val |= 1 << i;
		}
		break;

	case FCMPLE16_OPF:
		for (i = 0; i < 4; i++) {
			s16 a = (rs1 >> (i * 16)) & 0xffff;
			s16 b = (rs2 >> (i * 16)) & 0xffff;

			if (a <= b)
				rd_val |= 1 << i;
		}
		break;

	case FCMPLE32_OPF:
		for (i = 0; i < 2; i++) {
			s32 a = (rs1 >> (i * 32)) & 0xffff;
			s32 b = (rs2 >> (i * 32)) & 0xffff;

			if (a <= b)
				rd_val |= 1 << i;
		}
		break;

	case FCMPNE16_OPF:
		for (i = 0; i < 4; i++) {
			s16 a = (rs1 >> (i * 16)) & 0xffff;
			s16 b = (rs2 >> (i * 16)) & 0xffff;

			if (a != b)
				rd_val |= 1 << i;
		}
		break;

	case FCMPNE32_OPF:
		for (i = 0; i < 2; i++) {
			s32 a = (rs1 >> (i * 32)) & 0xffff;
			s32 b = (rs2 >> (i * 32)) & 0xffff;

			if (a != b)
				rd_val |= 1 << i;
		}
		break;

	case FCMPEQ16_OPF:
		for (i = 0; i < 4; i++) {
			s16 a = (rs1 >> (i * 16)) & 0xffff;
			s16 b = (rs2 >> (i * 16)) & 0xffff;

			if (a == b)
				rd_val |= 1 << i;
		}
		break;

	case FCMPEQ32_OPF:
		for (i = 0; i < 2; i++) {
			s32 a = (rs1 >> (i * 32)) & 0xffff;
			s32 b = (rs2 >> (i * 32)) & 0xffff;

			if (a == b)
				rd_val |= 1 << i;
		}
		break;
	};

	FUNC4(0, 0, FUNC0(insn), 0);
	FUNC5(regs, rd_val, FUNC0(insn));
}