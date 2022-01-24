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
typedef  int u8 ;
typedef  int u32 ;
struct ixp2000_uengine_code {int uengine_parameters; struct ixp2000_reg_value* initial_reg_values; } ;
struct ixp2000_reg_value {int reg; int value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_CTX_STS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IXP2000_UENGINE_4_CONTEXTS ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int* FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(int uengine, struct ixp2000_uengine_code *c)
{
	int per_ctx_regs;
	u32 *gpr_a;
	u32 *gpr_b;
	u8 *ucode;
	int i;

	gpr_a = FUNC8(128 * sizeof(u32), GFP_KERNEL);
	gpr_b = FUNC8(128 * sizeof(u32), GFP_KERNEL);
	ucode = FUNC7(513 * 5, GFP_KERNEL);
	if (gpr_a == NULL || gpr_b == NULL || ucode == NULL) {
		FUNC6(ucode);
		FUNC6(gpr_b);
		FUNC6(gpr_a);
		return 1;
	}

	per_ctx_regs = 16;
	if (c->uengine_parameters & IXP2000_UENGINE_4_CONTEXTS)
		per_ctx_regs = 32;

	for (i = 0; i < 256; i++) {
		struct ixp2000_reg_value *r = c->initial_reg_values + i;
		u32 *bank;
		int inc;
		int j;

		if (r->reg == -1)
			break;

		bank = (r->reg & 0x400) ? gpr_b : gpr_a;
		inc = (r->reg & 0x80) ? 128 : per_ctx_regs;

		j = r->reg & 0x7f;
		while (j < 128) {
			bank[j] = r->value;
			j += inc;
		}
	}

	FUNC0(ucode, gpr_a, gpr_b);
	FUNC3(uengine, ucode, 513);
	FUNC2(uengine, 0, 0);
	FUNC4(uengine, 0x01);
	for (i = 0; i < 100; i++) {
		u32 status;

		status = FUNC1(uengine, ACTIVE_CTX_STS);
		if (!(status & 0x80000000))
			break;
	}
	FUNC5(uengine, 0x01);

	FUNC6(ucode);
	FUNC6(gpr_b);
	FUNC6(gpr_a);

	return !!(i == 100);
}