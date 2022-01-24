#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct wreg_addr {size_t size; size_t addr; size_t read_regs_count; size_t* read_regs; int /*<<< orphan*/  presets; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {size_t size; size_t addr; int /*<<< orphan*/  presets; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 
 size_t IDLE_REGS_COUNT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 size_t REGS_COUNT ; 
 void* FUNC7 (struct bnx2x*,size_t) ; 
 scalar_t__ FUNC8 (struct bnx2x*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct bnx2x*,struct wreg_addr const*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,size_t*,size_t) ; 
 TYPE_1__* idle_reg_addrs ; 
 TYPE_1__* reg_addrs ; 
 struct wreg_addr wreg_addr_e1 ; 
 struct wreg_addr wreg_addr_e1h ; 
 struct wreg_addr wreg_addr_e2 ; 
 struct wreg_addr wreg_addr_e3 ; 
 struct wreg_addr wreg_addr_e3b0 ; 

__attribute__((used)) static int FUNC11(struct bnx2x *bp, u32 *p, u32 preset)
{
	u32 i, j, addr;
	const struct wreg_addr *wreg_addr_p = NULL;

	if (FUNC0(bp))
		wreg_addr_p = &wreg_addr_e1;
	else if (FUNC1(bp))
		wreg_addr_p = &wreg_addr_e1h;
	else if (FUNC2(bp))
		wreg_addr_p = &wreg_addr_e2;
	else if (FUNC4(bp))
		wreg_addr_p = &wreg_addr_e3;
	else if (FUNC5(bp))
		wreg_addr_p = &wreg_addr_e3b0;

	/* Read the idle_chk registers */
	for (i = 0; i < IDLE_REGS_COUNT; i++) {
		if (FUNC8(bp, &idle_reg_addrs[i]) &&
		    FUNC6(idle_reg_addrs[i].presets, preset)) {
			for (j = 0; j < idle_reg_addrs[i].size; j++)
				*p++ = FUNC7(bp, idle_reg_addrs[i].addr + j*4);
		}
	}

	/* Read the regular registers */
	for (i = 0; i < REGS_COUNT; i++) {
		if (FUNC8(bp, &reg_addrs[i]) &&
		    FUNC6(reg_addrs[i].presets, preset)) {
			for (j = 0; j < reg_addrs[i].size; j++)
				*p++ = FUNC7(bp, reg_addrs[i].addr + j*4);
		}
	}

	/* Read the CAM registers */
	if (FUNC9(bp, wreg_addr_p) &&
	    FUNC6(wreg_addr_p->presets, preset)) {
		for (i = 0; i < wreg_addr_p->size; i++) {
			*p++ = FUNC7(bp, wreg_addr_p->addr + i*4);

			/* In case of wreg_addr register, read additional
			   registers from read_regs array
			*/
			for (j = 0; j < wreg_addr_p->read_regs_count; j++) {
				addr = *(wreg_addr_p->read_regs);
				*p++ = FUNC7(bp, addr + j*4);
			}
		}
	}

	/* Paged registers are supported in E2 & E3 only */
	if (FUNC2(bp) || FUNC3(bp)) {
		/* Read "paged" registers */
		FUNC10(bp, p, preset);
	}

	return 0;
}