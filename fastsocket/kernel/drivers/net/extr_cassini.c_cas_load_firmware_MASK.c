#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct cas {scalar_t__ regs; } ;
struct TYPE_3__ {int val; int mask; int outarg; int outop; int fnext; int foff; int snext; int soff; int op; int outmask; int outshift; int outenab; scalar_t__ note; } ;
typedef  TYPE_1__ cas_hp_inst_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HP_INSTR_RAM_HI_MASK ; 
 int /*<<< orphan*/  HP_INSTR_RAM_HI_VAL ; 
 int /*<<< orphan*/  HP_INSTR_RAM_LOW_OUTARG ; 
 int /*<<< orphan*/  HP_INSTR_RAM_LOW_OUTEN ; 
 int /*<<< orphan*/  HP_INSTR_RAM_LOW_OUTMASK ; 
 int /*<<< orphan*/  HP_INSTR_RAM_LOW_OUTSHIFT ; 
 int /*<<< orphan*/  HP_INSTR_RAM_MID_FNEXT ; 
 int /*<<< orphan*/  HP_INSTR_RAM_MID_FOFF ; 
 int /*<<< orphan*/  HP_INSTR_RAM_MID_OP ; 
 int /*<<< orphan*/  HP_INSTR_RAM_MID_OUTARG ; 
 int /*<<< orphan*/  HP_INSTR_RAM_MID_OUTOP ; 
 int /*<<< orphan*/  HP_INSTR_RAM_MID_SNEXT ; 
 int /*<<< orphan*/  HP_INSTR_RAM_MID_SOFF ; 
 scalar_t__ REG_HP_INSTR_RAM_ADDR ; 
 scalar_t__ REG_HP_INSTR_RAM_DATA_HI ; 
 scalar_t__ REG_HP_INSTR_RAM_DATA_LOW ; 
 scalar_t__ REG_HP_INSTR_RAM_DATA_MID ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct cas *cp, cas_hp_inst_t *firmware)
{
	cas_hp_inst_t *inst;
	u32 val;
	int i;

	i = 0;
	while ((inst = firmware) && inst->note) {
		FUNC1(i, cp->regs + REG_HP_INSTR_RAM_ADDR);

		val = FUNC0(HP_INSTR_RAM_HI_VAL, inst->val);
		val |= FUNC0(HP_INSTR_RAM_HI_MASK, inst->mask);
		FUNC1(val, cp->regs + REG_HP_INSTR_RAM_DATA_HI);

		val = FUNC0(HP_INSTR_RAM_MID_OUTARG, inst->outarg >> 10);
		val |= FUNC0(HP_INSTR_RAM_MID_OUTOP, inst->outop);
		val |= FUNC0(HP_INSTR_RAM_MID_FNEXT, inst->fnext);
		val |= FUNC0(HP_INSTR_RAM_MID_FOFF, inst->foff);
		val |= FUNC0(HP_INSTR_RAM_MID_SNEXT, inst->snext);
		val |= FUNC0(HP_INSTR_RAM_MID_SOFF, inst->soff);
		val |= FUNC0(HP_INSTR_RAM_MID_OP, inst->op);
		FUNC1(val, cp->regs + REG_HP_INSTR_RAM_DATA_MID);

		val = FUNC0(HP_INSTR_RAM_LOW_OUTMASK, inst->outmask);
		val |= FUNC0(HP_INSTR_RAM_LOW_OUTSHIFT, inst->outshift);
		val |= FUNC0(HP_INSTR_RAM_LOW_OUTEN, inst->outenab);
		val |= FUNC0(HP_INSTR_RAM_LOW_OUTARG, inst->outarg);
		FUNC1(val, cp->regs + REG_HP_INSTR_RAM_DATA_LOW);
		++firmware;
		++i;
	}
}