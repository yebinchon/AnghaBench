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
struct brcms_hardware {TYPE_1__* band; int /*<<< orphan*/ * di; int /*<<< orphan*/  now; int /*<<< orphan*/  up; } ;
struct brcms_c_info {struct brcms_hardware* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 size_t RX_FIFO ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcms_c_info *wlc)
{
	struct brcms_hardware *wlc_hw = wlc->hw;

	if (!wlc_hw->up)
		return;

	/* increment second count */
	wlc_hw->now++;

	/* Check for FIFO error interrupts */
	FUNC0(wlc_hw);

	/* make sure RX dma has buffers */
	FUNC1(wlc->hw->di[RX_FIFO]);

	FUNC2(wlc_hw->band->pi);
}