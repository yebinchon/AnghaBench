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
struct apm_user {int suspend_result; scalar_t__ suspend_wait; struct apm_user* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  APM_NORMAL_RESUME ; 
 int APM_NO_ERROR ; 
 int /*<<< orphan*/  APM_STATE_SUSPEND ; 
 int APM_SUCCESS ; 
 int EIO ; 
 int /*<<< orphan*/  PMSG_RESUME ; 
 int /*<<< orphan*/  PMSG_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  apm_suspend_waitqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int ignore_normal_resume ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct apm_user* user_list ; 
 int /*<<< orphan*/  user_list_lock ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(int vetoable)
{
	int err;
	struct apm_user	*as;

	FUNC4(PMSG_SUSPEND);

	FUNC3(PMSG_SUSPEND);

	FUNC5();
	FUNC15(PMSG_SUSPEND);

	FUNC6();

	FUNC10();
	err = FUNC11(APM_STATE_SUSPEND);
	ignore_normal_resume = 1;
	FUNC9();

	FUNC5();
	FUNC8();

	if (err == APM_NO_ERROR)
		err = APM_SUCCESS;
	if (err != APM_SUCCESS)
		FUNC0("suspend", err);
	err = (err == APM_SUCCESS) ? 0 : -EIO;

	FUNC14();
	FUNC6();

	FUNC2(PMSG_RESUME);

	FUNC1(PMSG_RESUME);
	FUNC7(APM_NORMAL_RESUME, NULL);
	FUNC12(&user_list_lock);
	for (as = user_list; as != NULL; as = as->next) {
		as->suspend_wait = 0;
		as->suspend_result = err;
	}
	FUNC13(&user_list_lock);
	FUNC16(&apm_suspend_waitqueue);
	return err;
}