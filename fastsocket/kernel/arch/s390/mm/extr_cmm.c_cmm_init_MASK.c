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
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMSG_PREFIX ; 
 int /*<<< orphan*/ * cmm_default_sender ; 
 int /*<<< orphan*/  cmm_dir_table ; 
 int /*<<< orphan*/  cmm_oom_nb ; 
 int /*<<< orphan*/  cmm_power_notifier ; 
 int /*<<< orphan*/  cmm_smsg_target ; 
 int /*<<< orphan*/  cmm_sysctl_header ; 
 int /*<<< orphan*/  cmm_thread ; 
 int /*<<< orphan*/  cmm_thread_ptr ; 
 int /*<<< orphan*/  cmm_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sender ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14 (void)
{
	int rc = -ENOMEM;

#ifdef CONFIG_CMM_PROC
	cmm_sysctl_header = register_sysctl_table(cmm_dir_table);
	if (!cmm_sysctl_header)
		goto out_sysctl;
#endif
#ifdef CONFIG_CMM_IUCV
	/* convert sender to uppercase characters */
	if (sender) {
		int len = strlen(sender);
		while (len--)
			sender[len] = toupper(sender[len]);
	} else {
		sender = cmm_default_sender;
	}

	rc = smsg_register_callback(SMSG_PREFIX, cmm_smsg_target);
	if (rc < 0)
		goto out_smsg;
#endif
	rc = FUNC4(&cmm_oom_nb);
	if (rc < 0)
		goto out_oom_notify;
	rc = FUNC5(&cmm_power_notifier);
	if (rc)
		goto out_pm;
	cmm_thread_ptr = FUNC3(cmm_thread, NULL, "cmmthread");
	rc = FUNC0(cmm_thread_ptr) ? FUNC1(cmm_thread_ptr) : 0;
	if (rc)
		goto out_kthread;
	return 0;

out_kthread:
	FUNC12(&cmm_power_notifier);
out_pm:
	FUNC11(&cmm_oom_nb);
out_oom_notify:
#ifdef CONFIG_CMM_IUCV
	smsg_unregister_callback(SMSG_PREFIX, cmm_smsg_target);
out_smsg:
#endif
#ifdef CONFIG_CMM_PROC
	unregister_sysctl_table(cmm_sysctl_header);
out_sysctl:
#endif
	FUNC2(&cmm_timer);
	return rc;
}