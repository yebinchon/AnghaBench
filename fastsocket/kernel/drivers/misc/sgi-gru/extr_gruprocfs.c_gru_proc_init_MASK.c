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
struct proc_entry {scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct proc_entry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct proc_entry* proc_files ; 
 int /*<<< orphan*/  proc_gru ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	struct proc_entry *p;

	proc_gru = FUNC2("sgi_uv/gru", NULL);

	for (p = proc_files; p->name; p++)
		if (FUNC0(p))
			goto err;
	return 0;

err:
	FUNC1();
	return -1;
}