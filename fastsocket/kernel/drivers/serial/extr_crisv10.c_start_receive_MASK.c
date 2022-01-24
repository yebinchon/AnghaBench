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
struct e100_serial {int /*<<< orphan*/ * icmdadr; scalar_t__ uses_dma_in; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_DMA_CH6_CMD ; 
 int /*<<< orphan*/  cmd ; 
 int /*<<< orphan*/  reset ; 
 int /*<<< orphan*/  FUNC3 (struct e100_serial*) ; 

__attribute__((used)) static void
FUNC4(struct e100_serial *info)
{
#ifdef CONFIG_SVINTO_SIM
	/* No receive in the simulator.  Will probably be when the rest of
	 * the serial interface works, and this piece will just be removed.
	 */
	return;
#endif
	if (info->uses_dma_in) {
		/* reset the input dma channel to be sure it works */

		*info->icmdadr = FUNC1(R_DMA_CH6_CMD, cmd, reset);
		while (FUNC0(R_DMA_CH6_CMD, cmd, *info->icmdadr) ==
		       FUNC2(R_DMA_CH6_CMD, cmd, reset));

		FUNC3(info);
	}
}