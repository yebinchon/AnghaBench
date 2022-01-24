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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long FUNC2 (long) ; 
 int /*<<< orphan*/  loaned_pages ; 
 int /*<<< orphan*/  loaned_pages_target ; 
 int /*<<< orphan*/  oom_freed_pages ; 
 int /*<<< orphan*/  oom_kb ; 

__attribute__((used)) static int FUNC3(struct notifier_block *self,
			  unsigned long dummy, void *parm)
{
	unsigned long *freed = parm;
	long nr = FUNC0(oom_kb);

	FUNC1("OOM processing started\n");
	nr = FUNC2(nr);
	loaned_pages_target = loaned_pages;
	*freed += FUNC0(oom_kb) - nr;
	oom_freed_pages += FUNC0(oom_kb) - nr;
	FUNC1("OOM processing complete\n");
	return NOTIFY_OK;
}