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
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FW_FEATURE_CMO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ cmm_disabled ; 
 int /*<<< orphan*/  cmm_mem_isolate_nb ; 
 int /*<<< orphan*/  cmm_mem_nb ; 
 int /*<<< orphan*/  cmm_oom_nb ; 
 int /*<<< orphan*/  cmm_reboot_nb ; 
 int /*<<< orphan*/  cmm_sysdev ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmm_thread ; 
 int /*<<< orphan*/  cmm_thread_ptr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(void)
{
	int rc = -ENOMEM;

	if (!FUNC4(FW_FEATURE_CMO))
		return -EOPNOTSUPP;

	if ((rc = FUNC8(&cmm_oom_nb)) < 0)
		return rc;

	if ((rc = FUNC9(&cmm_reboot_nb)))
		goto out_oom_notifier;

	if ((rc = FUNC2(&cmm_sysdev)))
		goto out_reboot_notifier;

	if (FUNC7(&cmm_mem_nb) ||
	    FUNC6(&cmm_mem_isolate_nb))
		goto out_unregister_notifier;

	if (cmm_disabled)
		return rc;

	cmm_thread_ptr = FUNC5(cmm_thread, NULL, "cmmthread");
	if (FUNC0(cmm_thread_ptr)) {
		rc = FUNC1(cmm_thread_ptr);
		goto out_unregister_notifier;
	}

	return rc;

out_unregister_notifier:
	FUNC11(&cmm_mem_nb);
	FUNC10(&cmm_mem_isolate_nb);
	FUNC3(&cmm_sysdev);
out_reboot_notifier:
	FUNC13(&cmm_reboot_nb);
out_oom_notifier:
	FUNC12(&cmm_oom_nb);
	return rc;
}