#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  en; } ;
typedef  TYPE_1__ reg_iop_mpu_rw_ctrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 TYPE_1__ FUNC1 () ; 
 TYPE_1__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iop_mpu ; 
 int /*<<< orphan*/  regi_iop_mpu ; 
 int /*<<< orphan*/  regk_iop_mpu_yes ; 
 int /*<<< orphan*/  rw_ctrl ; 
 int /*<<< orphan*/  rw_instr ; 
 int FUNC5 () ; 

int FUNC6(unsigned int start_addr)
{
	reg_iop_mpu_rw_ctrl mpu_ctrl = { .en = regk_iop_mpu_yes };
	int retval;

	/* disable MPU */
	if ((retval = FUNC5()) != 0)
		goto out;
	FUNC3(iop_mpu, regi_iop_mpu, rw_instr, FUNC2());
	if ((retval = FUNC5()) != 0)
		goto out;
	/* set PC and wait for it to bite */
	if ((retval = FUNC5()) != 0)
		goto out;
	FUNC4(iop_mpu, regi_iop_mpu, rw_instr, FUNC0(start_addr));
	if ((retval = FUNC5()) != 0)
		goto out;
	/* make sure the MPU starts executing with interrupts disabled */
	FUNC3(iop_mpu, regi_iop_mpu, rw_instr, FUNC1());
	if ((retval = FUNC5()) != 0)
		goto out;
	/* enable MPU */
	FUNC3(iop_mpu, regi_iop_mpu, rw_ctrl, mpu_ctrl);
 out:
	return retval;
}