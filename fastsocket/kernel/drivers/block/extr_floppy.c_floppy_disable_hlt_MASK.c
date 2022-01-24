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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  floppy_hlt_lock ; 
 int hlt_disabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long flags;

	FUNC1(&floppy_hlt_lock, flags);
	if (!hlt_disabled) {
		hlt_disabled = 1;
#ifdef HAVE_DISABLE_HLT
		disable_hlt();
#endif
	}
	FUNC2(&floppy_hlt_lock, flags);
}