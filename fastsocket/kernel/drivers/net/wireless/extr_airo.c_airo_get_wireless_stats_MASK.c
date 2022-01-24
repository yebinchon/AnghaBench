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
struct net_device {struct airo_info* ml_priv; } ;
struct iw_statistics {int dummy; } ;
struct airo_info {struct iw_statistics wstats; int /*<<< orphan*/  thr_wait; int /*<<< orphan*/  jobs; int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  JOB_WSTATS ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iw_statistics *FUNC5(struct net_device *dev)
{
	struct airo_info *local =  dev->ml_priv;

	if (!FUNC3(JOB_WSTATS, &local->jobs)) {
		/* Get stats out of the card if available */
		if (FUNC1(&local->sem) != 0) {
			FUNC2(JOB_WSTATS, &local->jobs);
			FUNC4(&local->thr_wait);
		} else
			FUNC0(local);
	}

	return &local->wstats;
}