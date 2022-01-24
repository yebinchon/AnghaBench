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
struct TYPE_2__ {int address; } ;

/* Variables and functions */
 TYPE_1__* FDCS ; 
 int N_FDC ; 
 int buffer_max ; 
 int buffer_min ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  fd_timeout ; 
 int /*<<< orphan*/  fd_timer ; 
 int fdc ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * floppy_track_buffer ; 
 int /*<<< orphan*/  floppy_usage_lock ; 
 int /*<<< orphan*/  floppy_work ; 
 scalar_t__ irqdma_allocated ; 
 int max_buffer_sectors ; 
 int /*<<< orphan*/ * motor_off_timer ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timeout_message ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ usage_count ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
	int old_fdc;
#ifdef FLOPPY_SANITY_CHECK
#ifndef __sparc__
	int drive;
#endif
#endif
	long tmpsize;
	unsigned long tmpaddr;
	unsigned long flags;

	FUNC8(&floppy_usage_lock, flags);
	if (--usage_count) {
		FUNC9(&floppy_usage_lock, flags);
		return;
	}
	FUNC9(&floppy_usage_lock, flags);
	if (irqdma_allocated) {
		FUNC0();
		FUNC2();
		FUNC3();
		irqdma_allocated = 0;
	}
	FUNC7(0, ~0, 8);
#if N_FDC > 1
	set_dor(1, ~8, 0);
#endif
	FUNC4();

	if (floppy_track_buffer && max_buffer_sectors) {
		tmpsize = max_buffer_sectors * 1024;
		tmpaddr = (unsigned long)floppy_track_buffer;
		floppy_track_buffer = NULL;
		max_buffer_sectors = 0;
		buffer_min = buffer_max = -1;
		FUNC1(tmpaddr, tmpsize);
	}
#ifdef FLOPPY_SANITY_CHECK
#ifndef __sparc__
	for (drive = 0; drive < N_FDC * 4; drive++)
		if (timer_pending(motor_off_timer + drive))
			printk("motor off timer %d still active\n", drive);
#endif

	if (timer_pending(&fd_timeout))
		printk("floppy timer still active:%s\n", timeout_message);
	if (timer_pending(&fd_timer))
		printk("auxiliary floppy timer still active\n");
	if (work_pending(&floppy_work))
		printk("work still pending\n");
#endif
	old_fdc = fdc;
	for (fdc = 0; fdc < N_FDC; fdc++)
		if (FDCS->address != -1)
			FUNC5(fdc);
	fdc = old_fdc;
}