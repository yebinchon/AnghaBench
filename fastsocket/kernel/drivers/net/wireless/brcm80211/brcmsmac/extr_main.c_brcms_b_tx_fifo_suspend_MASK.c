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
typedef  int uint ;
typedef  int u8 ;
struct brcms_hardware {int suspended_fifos; int /*<<< orphan*/  wlc; int /*<<< orphan*/  band; scalar_t__* di; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BRCMS_WAKE_OVERRIDE_TXFIFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct brcms_hardware *wlc_hw,
				    uint tx_fifo)
{
	u8 fifo = 1 << tx_fifo;

	/* Two clients of this code, 11h Quiet period and scanning. */

	/* only suspend if not already suspended */
	if ((wlc_hw->suspended_fifos & fifo) == fifo)
		return;

	/* force the core awake only if not already */
	if (wlc_hw->suspended_fifos == 0)
		FUNC3(wlc_hw,
						BRCMS_WAKE_OVERRIDE_TXFIFO);

	wlc_hw->suspended_fifos |= fifo;

	if (wlc_hw->di[tx_fifo]) {
		/*
		 * Suspending AMPDU transmissions in the middle can cause
		 * underflow which may result in mismatch between ucode and
		 * driver so suspend the mac before suspending the FIFO
		 */
		if (FUNC0(wlc_hw->band))
			FUNC2(wlc_hw->wlc);

		FUNC4(wlc_hw->di[tx_fifo]);

		if (FUNC0(wlc_hw->band))
			FUNC1(wlc_hw->wlc);
	}
}