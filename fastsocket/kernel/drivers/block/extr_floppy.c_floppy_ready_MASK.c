#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  select_delay; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  length; int /*<<< orphan*/  kernel_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RESET ; 
 TYPE_2__* DP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FD_DEBUG ; 
 int FD_RAW_NEED_DISK ; 
 int FD_RAW_NEED_SEEK ; 
 int FD_RAW_NO_MOTOR ; 
 int FD_RAW_READ ; 
 int FD_RAW_WRITE ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  current_drive ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* raw_cmd ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(void)
{
	CHECK_RESET;
	if (FUNC10(floppy_ready))
		return;
	if (FUNC4())
		return;

#ifdef DCL_DEBUG
	if (DP->flags & FD_DEBUG) {
		DPRINT("calling disk change from floppy_ready\n");
	}
#endif
	if (!(raw_cmd->flags & FD_RAW_NO_MOTOR) &&
	    FUNC2(current_drive) && !DP->select_delay)
		FUNC11();	/* this clears the dcl on certain drive/controller
				 * combinations */

#ifdef fd_chose_dma_mode
	if ((raw_cmd->flags & FD_RAW_READ) || (raw_cmd->flags & FD_RAW_WRITE)) {
		unsigned long flags = claim_dma_lock();
		fd_chose_dma_mode(raw_cmd->kernel_data, raw_cmd->length);
		release_dma_lock(flags);
	}
#endif

	if (raw_cmd->flags & (FD_RAW_NEED_SEEK | FD_RAW_NEED_DISK)) {
		FUNC6();
		FUNC5();	/* must be done here because of hut, hlt ... */
		FUNC8();
	} else {
		if ((raw_cmd->flags & FD_RAW_READ) ||
		    (raw_cmd->flags & FD_RAW_WRITE))
			FUNC5();
		FUNC9();
	}
}