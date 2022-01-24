#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int save_restore_gpu_addr; int clear_state_gpu_addr; } ;
struct radeon_device {scalar_t__ family; TYPE_2__* rlc_fw; TYPE_1__ rlc; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int ARUBA_RLC_UCODE_SIZE ; 
 int CAYMAN_RLC_UCODE_SIZE ; 
 scalar_t__ CHIP_ARUBA ; 
 scalar_t__ CHIP_CAICOS ; 
 scalar_t__ CHIP_CAYMAN ; 
 scalar_t__ CHIP_CEDAR ; 
 scalar_t__ CHIP_RV770 ; 
 int EINVAL ; 
 int EVERGREEN_RLC_UCODE_SIZE ; 
 int R700_RLC_UCODE_SIZE ; 
 int /*<<< orphan*/  RLC_HB_BASE ; 
 int /*<<< orphan*/  RLC_HB_CNTL ; 
 int /*<<< orphan*/  RLC_HB_RPTR ; 
 int /*<<< orphan*/  RLC_HB_WPTR ; 
 int /*<<< orphan*/  RLC_HB_WPTR_LSB_ADDR ; 
 int /*<<< orphan*/  RLC_HB_WPTR_MSB_ADDR ; 
 int /*<<< orphan*/  RLC_MC_CNTL ; 
 int /*<<< orphan*/  RLC_UCODE_ADDR ; 
 int /*<<< orphan*/  RLC_UCODE_CNTL ; 
 int /*<<< orphan*/  RLC_UCODE_DATA ; 
 int RLC_UCODE_SIZE ; 
 int /*<<< orphan*/  TN_RLC_CLEAR_STATE_RESTORE_BASE ; 
 int /*<<< orphan*/  TN_RLC_SAVE_AND_RESTORE_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev)
{
	u32 i;
	const __be32 *fw_data;

	if (!rdev->rlc_fw)
		return -EINVAL;

	FUNC3(rdev);

	FUNC0(RLC_HB_CNTL, 0);

	if (rdev->family == CHIP_ARUBA) {
		FUNC0(TN_RLC_SAVE_AND_RESTORE_BASE, rdev->rlc.save_restore_gpu_addr >> 8);
		FUNC0(TN_RLC_CLEAR_STATE_RESTORE_BASE, rdev->rlc.clear_state_gpu_addr >> 8);
	}
	if (rdev->family <= CHIP_CAYMAN) {
		FUNC0(RLC_HB_BASE, 0);
		FUNC0(RLC_HB_RPTR, 0);
		FUNC0(RLC_HB_WPTR, 0);
	}
	if (rdev->family <= CHIP_CAICOS) {
		FUNC0(RLC_HB_WPTR_LSB_ADDR, 0);
		FUNC0(RLC_HB_WPTR_MSB_ADDR, 0);
	}
	FUNC0(RLC_MC_CNTL, 0);
	FUNC0(RLC_UCODE_CNTL, 0);

	fw_data = (const __be32 *)rdev->rlc_fw->data;
	if (rdev->family >= CHIP_ARUBA) {
		for (i = 0; i < ARUBA_RLC_UCODE_SIZE; i++) {
			FUNC0(RLC_UCODE_ADDR, i);
			FUNC0(RLC_UCODE_DATA, FUNC1(fw_data++));
		}
	} else if (rdev->family >= CHIP_CAYMAN) {
		for (i = 0; i < CAYMAN_RLC_UCODE_SIZE; i++) {
			FUNC0(RLC_UCODE_ADDR, i);
			FUNC0(RLC_UCODE_DATA, FUNC1(fw_data++));
		}
	} else if (rdev->family >= CHIP_CEDAR) {
		for (i = 0; i < EVERGREEN_RLC_UCODE_SIZE; i++) {
			FUNC0(RLC_UCODE_ADDR, i);
			FUNC0(RLC_UCODE_DATA, FUNC1(fw_data++));
		}
	} else if (rdev->family >= CHIP_RV770) {
		for (i = 0; i < R700_RLC_UCODE_SIZE; i++) {
			FUNC0(RLC_UCODE_ADDR, i);
			FUNC0(RLC_UCODE_DATA, FUNC1(fw_data++));
		}
	} else {
		for (i = 0; i < RLC_UCODE_SIZE; i++) {
			FUNC0(RLC_UCODE_ADDR, i);
			FUNC0(RLC_UCODE_DATA, FUNC1(fw_data++));
		}
	}
	FUNC0(RLC_UCODE_ADDR, 0);

	FUNC2(rdev);

	return 0;
}