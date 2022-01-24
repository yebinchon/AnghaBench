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
struct TYPE_4__ {int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  version; int /*<<< orphan*/  release; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(void)
{
	unsigned long stack;

	FUNC2("Pid: %d, comm: %.20s %s %s %.*s\n",
		current->pid, current->comm, FUNC1(),
		FUNC0()->release,
		(int)FUNC4(FUNC0()->version, " "),
		FUNC0()->version);
	FUNC3(NULL, NULL, &stack);
}