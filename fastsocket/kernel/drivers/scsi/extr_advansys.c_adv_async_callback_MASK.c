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
typedef  int uchar ;
typedef  int /*<<< orphan*/  ADV_DVC_VAR ;

/* Variables and functions */
#define  ADV_ASYNC_RDMA_FAILURE 130 
#define  ADV_ASYNC_SCSI_BUS_RESET_DET 129 
#define  ADV_HOST_SCSI_BUS_RESET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(ADV_DVC_VAR *adv_dvc_varp, uchar code)
{
	switch (code) {
	case ADV_ASYNC_SCSI_BUS_RESET_DET:
		/*
		 * The firmware detected a SCSI Bus reset.
		 */
		FUNC0(0, "ADV_ASYNC_SCSI_BUS_RESET_DET\n");
		break;

	case ADV_ASYNC_RDMA_FAILURE:
		/*
		 * Handle RDMA failure by resetting the SCSI Bus and
		 * possibly the chip if it is unresponsive. Log the error
		 * with a unique code.
		 */
		FUNC0(0, "ADV_ASYNC_RDMA_FAILURE\n");
		FUNC1(adv_dvc_varp);
		break;

	case ADV_HOST_SCSI_BUS_RESET:
		/*
		 * Host generated SCSI bus reset occurred.
		 */
		FUNC0(0, "ADV_HOST_SCSI_BUS_RESET\n");
		break;

	default:
		FUNC0(0, "unknown code 0x%x\n", code);
		break;
	}
}