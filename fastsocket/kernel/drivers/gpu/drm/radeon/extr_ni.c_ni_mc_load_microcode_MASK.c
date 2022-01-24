#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct radeon_device {int family; int usec_timeout; TYPE_1__* mc_fw; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int BTC_IO_MC_REGS_SIZE ; 
 int BTC_MC_UCODE_SIZE ; 
 int CAYMAN_MC_UCODE_SIZE ; 
#define  CHIP_BARTS 131 
#define  CHIP_CAICOS 130 
#define  CHIP_CAYMAN 129 
#define  CHIP_TURKS 128 
 int EINVAL ; 
 int /*<<< orphan*/  MC_IO_PAD_CNTL_D0 ; 
 int /*<<< orphan*/  MC_SEQ_IO_DEBUG_DATA ; 
 int /*<<< orphan*/  MC_SEQ_IO_DEBUG_INDEX ; 
 int /*<<< orphan*/  MC_SEQ_MISC0 ; 
 int MC_SEQ_MISC0_GDDR5_MASK ; 
 int MC_SEQ_MISC0_GDDR5_SHIFT ; 
 int MC_SEQ_MISC0_GDDR5_VALUE ; 
 int /*<<< orphan*/  MC_SEQ_SUP_CNTL ; 
 int /*<<< orphan*/  MC_SEQ_SUP_PGM ; 
 int /*<<< orphan*/  MC_SHARED_BLACKOUT_CNTL ; 
 int MEM_FALL_OUT_CMD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RUN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  barts_io_mc_regs ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caicos_io_mc_regs ; 
 int /*<<< orphan*/  cayman_io_mc_regs ; 
 int /*<<< orphan*/  turks_io_mc_regs ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct radeon_device *rdev)
{
	const __be32 *fw_data;
	u32 mem_type, running, blackout = 0;
	u32 *io_mc_regs;
	int i, ucode_size, regs_size;

	if (!rdev->mc_fw)
		return -EINVAL;

	switch (rdev->family) {
	case CHIP_BARTS:
		io_mc_regs = (u32 *)&barts_io_mc_regs;
		ucode_size = BTC_MC_UCODE_SIZE;
		regs_size = BTC_IO_MC_REGS_SIZE;
		break;
	case CHIP_TURKS:
		io_mc_regs = (u32 *)&turks_io_mc_regs;
		ucode_size = BTC_MC_UCODE_SIZE;
		regs_size = BTC_IO_MC_REGS_SIZE;
		break;
	case CHIP_CAICOS:
	default:
		io_mc_regs = (u32 *)&caicos_io_mc_regs;
		ucode_size = BTC_MC_UCODE_SIZE;
		regs_size = BTC_IO_MC_REGS_SIZE;
		break;
	case CHIP_CAYMAN:
		io_mc_regs = (u32 *)&cayman_io_mc_regs;
		ucode_size = CAYMAN_MC_UCODE_SIZE;
		regs_size = BTC_IO_MC_REGS_SIZE;
		break;
	}

	mem_type = (FUNC0(MC_SEQ_MISC0) & MC_SEQ_MISC0_GDDR5_MASK) >> MC_SEQ_MISC0_GDDR5_SHIFT;
	running = FUNC0(MC_SEQ_SUP_CNTL) & RUN_MASK;

	if ((mem_type == MC_SEQ_MISC0_GDDR5_VALUE) && (running == 0)) {
		if (running) {
			blackout = FUNC0(MC_SHARED_BLACKOUT_CNTL);
			FUNC1(MC_SHARED_BLACKOUT_CNTL, 1);
		}

		/* reset the engine and set to writable */
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000008);
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000010);

		/* load mc io regs */
		for (i = 0; i < regs_size; i++) {
			FUNC1(MC_SEQ_IO_DEBUG_INDEX, io_mc_regs[(i << 1)]);
			FUNC1(MC_SEQ_IO_DEBUG_DATA, io_mc_regs[(i << 1) + 1]);
		}
		/* load the MC ucode */
		fw_data = (const __be32 *)rdev->mc_fw->data;
		for (i = 0; i < ucode_size; i++)
			FUNC1(MC_SEQ_SUP_PGM, FUNC2(fw_data++));

		/* put the engine back into the active state */
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000008);
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000004);
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000001);

		/* wait for training to complete */
		for (i = 0; i < rdev->usec_timeout; i++) {
			if (FUNC0(MC_IO_PAD_CNTL_D0) & MEM_FALL_OUT_CMD)
				break;
			FUNC3(1);
		}

		if (running)
			FUNC1(MC_SHARED_BLACKOUT_CNTL, blackout);
	}

	return 0;
}