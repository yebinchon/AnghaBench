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
typedef  int /*<<< orphan*/  u32 ;
struct __vxge_hw_channel {TYPE_1__* common_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * clear_msix_mask_vect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(struct __vxge_hw_channel *channel, int msix_id)
{

	FUNC0(
		(u32)FUNC1(FUNC2(msix_id >> 2), 0, 32),
		&channel->common_reg->clear_msix_mask_vect[msix_id%4]);

	return;
}