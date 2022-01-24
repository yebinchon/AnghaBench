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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int ;
struct file {struct apm_user* private_data; } ;
struct apm_user {int suspend_wait; int suspend_result; int /*<<< orphan*/  suspends_pending; int /*<<< orphan*/  suspends_read; int /*<<< orphan*/  standbys_pending; int /*<<< orphan*/  standbys_read; int /*<<< orphan*/  writer; int /*<<< orphan*/  suser; } ;

/* Variables and functions */
#define  APM_IOC_STANDBY 129 
#define  APM_IOC_SUSPEND 128 
 int /*<<< orphan*/  APM_USER_STANDBY ; 
 int /*<<< orphan*/  APM_USER_SUSPEND ; 
 long EIO ; 
 long ENOTTY ; 
 long EPERM ; 
 int /*<<< orphan*/  apm_suspend_waitqueue ; 
 scalar_t__ FUNC0 (struct apm_user*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct apm_user*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  standbys_pending ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  suspends_pending ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static long FUNC7(struct file *filp, u_int cmd, u_long arg)
{
	struct apm_user *as;
	int ret;

	as = filp->private_data;
	if (FUNC0(as, "ioctl"))
		return -EIO;
	if (!as->suser || !as->writer)
		return -EPERM;
	switch (cmd) {
	case APM_IOC_STANDBY:
		FUNC1();
		if (as->standbys_read > 0) {
			as->standbys_read--;
			as->standbys_pending--;
			standbys_pending--;
		} else
			FUNC2(APM_USER_STANDBY, as);
		if (standbys_pending <= 0)
			FUNC3();
		FUNC5();
		break;
	case APM_IOC_SUSPEND:
		FUNC1();
		if (as->suspends_read > 0) {
			as->suspends_read--;
			as->suspends_pending--;
			suspends_pending--;
		} else
			FUNC2(APM_USER_SUSPEND, as);
		if (suspends_pending <= 0) {
			ret = FUNC4(1);
		} else {
			as->suspend_wait = 1;
			FUNC6(apm_suspend_waitqueue,
					as->suspend_wait == 0);
			ret = as->suspend_result;
		}
		FUNC5();
		return ret;
	default:
		return -ENOTTY;
	}
	return 0;
}