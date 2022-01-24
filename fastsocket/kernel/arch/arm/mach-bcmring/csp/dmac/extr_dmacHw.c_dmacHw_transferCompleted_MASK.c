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
typedef  int /*<<< orphan*/  dmacHw_TRANSFER_STATUS_e ;
typedef  int /*<<< orphan*/  dmacHw_HANDLE_t ;
struct TYPE_3__ {int channel; int /*<<< orphan*/  module; } ;
typedef  TYPE_1__ dmacHw_CBLK_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmacHw_TRANSFER_STATUS_BUSY ; 
 int /*<<< orphan*/  dmacHw_TRANSFER_STATUS_DONE ; 
 int /*<<< orphan*/  dmacHw_TRANSFER_STATUS_ERROR ; 

dmacHw_TRANSFER_STATUS_e FUNC3(dmacHw_HANDLE_t handle	/*   [ IN ] DMA Channel handle */
    ) {
	dmacHw_CBLK_t *pCblk = FUNC1(handle);

	if (FUNC0(pCblk->module, pCblk->channel)) {
		return dmacHw_TRANSFER_STATUS_BUSY;
	} else if (FUNC2(pCblk->module) &
		   (0x00000001 << pCblk->channel)) {
		return dmacHw_TRANSFER_STATUS_ERROR;
	}

	return dmacHw_TRANSFER_STATUS_DONE;
}