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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FD_COMMAND_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  command_status ; 
 int /*<<< orphan*/ * cont ; 
 scalar_t__ current_req ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ do_floppy ; 
 int /*<<< orphan*/  fd_timeout ; 
 int /*<<< orphan*/  fdc_busy ; 
 int /*<<< orphan*/  fdc_wait ; 
 int /*<<< orphan*/  floppy_lock ; 
 int /*<<< orphan*/  floppy_queue ; 
 int /*<<< orphan*/ * raw_cmd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC9(void)
{
	unsigned long flags;

	raw_cmd = NULL;
	if (!FUNC7(0, &fdc_busy))
		FUNC0("FDC access conflict!\n");

	if (do_floppy)
		FUNC0("device interrupt still active at FDC release: %p!\n",
		       do_floppy);
	command_status = FD_COMMAND_NONE;
	FUNC5(&floppy_lock, flags);
	FUNC3(&fd_timeout);
	cont = NULL;
	FUNC2(0, &fdc_busy);
	if (current_req || FUNC1(floppy_queue))
		FUNC4(floppy_queue);
	FUNC6(&floppy_lock, flags);
	FUNC8(&fdc_wait);
}