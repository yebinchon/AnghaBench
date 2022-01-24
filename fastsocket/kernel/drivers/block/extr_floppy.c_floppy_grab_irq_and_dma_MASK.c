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
struct TYPE_2__ {int address; int /*<<< orphan*/  dor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FDCS ; 
 int /*<<< orphan*/  FD_DOR ; 
 int /*<<< orphan*/  FLOPPY_DMA ; 
 int /*<<< orphan*/  FLOPPY_IRQ ; 
 scalar_t__ N_FDC ; 
 int can_use_virtual_dma ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ fdc ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  floppy_usage_lock ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int irqdma_allocated ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  usage_count ; 
 int use_virtual_dma ; 

__attribute__((used)) static int FUNC13(void)
{
	unsigned long flags;

	FUNC11(&floppy_usage_lock, flags);
	if (usage_count++) {
		FUNC12(&floppy_usage_lock, flags);
		return 0;
	}
	FUNC12(&floppy_usage_lock, flags);

	/*
	 * We might have scheduled a free_irq(), wait it to
	 * drain first:
	 */
	FUNC8();

	if (FUNC5()) {
		FUNC0("Unable to grab IRQ%d for the floppy driver\n",
		       FLOPPY_IRQ);
		FUNC11(&floppy_usage_lock, flags);
		usage_count--;
		FUNC12(&floppy_usage_lock, flags);
		return -1;
	}
	if (FUNC4()) {
		FUNC0("Unable to grab DMA%d for the floppy driver\n",
		       FLOPPY_DMA);
		if (can_use_virtual_dma & 2)
			use_virtual_dma = can_use_virtual_dma = 1;
		if (!(can_use_virtual_dma & 1)) {
			FUNC2();
			FUNC11(&floppy_usage_lock, flags);
			usage_count--;
			FUNC12(&floppy_usage_lock, flags);
			return -1;
		}
	}

	for (fdc = 0; fdc < N_FDC; fdc++) {
		if (FDCS->address != -1) {
			if (FUNC7(fdc))
				goto cleanup;
		}
	}
	for (fdc = 0; fdc < N_FDC; fdc++) {
		if (FDCS->address != -1) {
			FUNC9(1);
			FUNC3(FDCS->dor, FD_DOR);
		}
	}
	fdc = 0;
	FUNC10(0, ~0, 8);	/* avoid immediate interrupt */

	for (fdc = 0; fdc < N_FDC; fdc++)
		if (FDCS->address != -1)
			FUNC3(FDCS->dor, FD_DOR);
	/*
	 * The driver will try and free resources and relies on us
	 * to know if they were allocated or not.
	 */
	fdc = 0;
	irqdma_allocated = 1;
	return 0;
cleanup:
	FUNC2();
	FUNC1();
	while (--fdc >= 0)
		FUNC6(fdc);
	FUNC11(&floppy_usage_lock, flags);
	usage_count--;
	FUNC12(&floppy_usage_lock, flags);
	return -1;
}