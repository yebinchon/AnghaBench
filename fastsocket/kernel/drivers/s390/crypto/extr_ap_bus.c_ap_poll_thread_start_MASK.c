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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ap_poll_kthread ; 
 int /*<<< orphan*/  ap_poll_thread ; 
 int /*<<< orphan*/  ap_poll_thread_mutex ; 
 scalar_t__ ap_suspend_flag ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	int rc;

	if (FUNC2() || ap_suspend_flag)
		return 0;
	FUNC4(&ap_poll_thread_mutex);
	if (!ap_poll_kthread) {
		ap_poll_kthread = FUNC3(ap_poll_thread, NULL, "appoll");
		rc = FUNC0(ap_poll_kthread) ? FUNC1(ap_poll_kthread) : 0;
		if (rc)
			ap_poll_kthread = NULL;
	}
	else
		rc = 0;
	FUNC5(&ap_poll_thread_mutex);
	return rc;
}