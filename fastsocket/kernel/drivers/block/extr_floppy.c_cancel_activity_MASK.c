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
typedef  int /*<<< orphan*/  work_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * do_floppy ; 
 scalar_t__ empty ; 
 int /*<<< orphan*/  fd_timer ; 
 int /*<<< orphan*/  floppy_lock ; 
 int /*<<< orphan*/  floppy_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long flags;

	FUNC2(&floppy_lock, flags);
	do_floppy = NULL;
	FUNC0(&floppy_work, (work_func_t)empty);
	FUNC1(&fd_timer);
	FUNC3(&floppy_lock, flags);
}