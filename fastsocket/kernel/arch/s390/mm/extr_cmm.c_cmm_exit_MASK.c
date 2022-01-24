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
 int /*<<< orphan*/  SMSG_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmm_oom_nb ; 
 int /*<<< orphan*/  cmm_page_list ; 
 int /*<<< orphan*/  cmm_pages ; 
 int /*<<< orphan*/  cmm_power_notifier ; 
 int /*<<< orphan*/  cmm_smsg_target ; 
 int /*<<< orphan*/  cmm_sysctl_header ; 
 int /*<<< orphan*/  cmm_thread_ptr ; 
 int /*<<< orphan*/  cmm_timed_page_list ; 
 int /*<<< orphan*/  cmm_timed_pages ; 
 int /*<<< orphan*/  cmm_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
#ifdef CONFIG_CMM_PROC
	unregister_sysctl_table(cmm_sysctl_header);
#endif
#ifdef CONFIG_CMM_IUCV
	smsg_unregister_callback(SMSG_PREFIX, cmm_smsg_target);
#endif
	FUNC5(&cmm_power_notifier);
	FUNC4(&cmm_oom_nb);
	FUNC2(cmm_thread_ptr);
	FUNC1(&cmm_timer);
	FUNC0(cmm_pages, &cmm_pages, &cmm_page_list);
	FUNC0(cmm_timed_pages, &cmm_timed_pages, &cmm_timed_page_list);
}