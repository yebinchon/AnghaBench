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
struct omap_kp {int rows; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ OMAP1_MPUIO_BASE ; 
 scalar_t__ OMAP_MPUIO_KBD_MASKIT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kp_tasklet ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/ * row_gpios ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct omap_kp *omap_kp = dev_id;

	/* disable keyboard interrupt and schedule for handling */
	if (FUNC0()) {
		int i;

		for (i = 0; i < omap_kp->rows; i++) {
			int gpio_irq = FUNC3(row_gpios[i]);
			/*
			 * The interrupt which we're currently handling should
			 * be disabled _nosync() to avoid deadlocks waiting
			 * for this handler to complete.  All others should
			 * be disabled the regular way for SMP safety.
			 */
			if (gpio_irq == irq)
				FUNC2(gpio_irq);
			else
				FUNC1(gpio_irq);
		}
	} else
		/* disable keyboard interrupt and schedule for handling */
		FUNC4(1, OMAP1_MPUIO_BASE + OMAP_MPUIO_KBD_MASKIT);

	FUNC5(&kp_tasklet);

	return IRQ_HANDLED;
}