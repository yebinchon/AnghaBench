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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hotkey; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ hotkey_all_mask ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  hotkey_mutex ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  hotkey_user_mask ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,...) ; 
 TYPE_1__ tp_features ; 

__attribute__((used)) static int FUNC6(struct seq_file *m)
{
	int res, status;

	if (!tp_features.hotkey) {
		FUNC5(m, "status:\t\tnot supported\n");
		return 0;
	}

	if (FUNC3(&hotkey_mutex))
		return -ERESTARTSYS;
	res = FUNC2(&status);
	if (!res)
		res = FUNC1();
	FUNC4(&hotkey_mutex);
	if (res)
		return res;

	FUNC5(m, "status:\t\t%s\n", FUNC0(status, 0));
	if (hotkey_all_mask) {
		FUNC5(m, "mask:\t\t0x%08x\n", hotkey_user_mask);
		FUNC5(m, "commands:\tenable, disable, reset, <mask>\n");
	} else {
		FUNC5(m, "mask:\t\tnot supported\n");
		FUNC5(m, "commands:\tenable, disable, reset\n");
	}

	return 0;
}