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
typedef  size_t uint ;
struct brcms_hardware {scalar_t__* di; } ;
struct brcms_c_info {TYPE_1__* pub; struct brcms_hardware* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  ieee_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RANGE_ALL ; 
 size_t NFIFO ; 
 size_t RX_FIFO ; 
 size_t TX_BCMC_FIFO ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct brcms_c_info *wlc)
{
	struct brcms_hardware *wlc_hw = wlc->hw;
	uint i;

	/* free any posted tx packets */
	for (i = 0; i < NFIFO; i++) {
		if (wlc_hw->di[i]) {
			FUNC2(wlc_hw->di[i], DMA_RANGE_ALL);
			if (i < TX_BCMC_FIFO)
				FUNC3(wlc->pub->ieee_hw,
						     FUNC0(i));
		}
	}

	/* free any posted rx packets */
	FUNC1(wlc_hw->di[RX_FIFO]);
}