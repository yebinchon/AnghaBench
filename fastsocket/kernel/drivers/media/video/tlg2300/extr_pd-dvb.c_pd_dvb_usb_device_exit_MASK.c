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
struct pd_dvb_adapter {int /*<<< orphan*/  dvb_adap; int /*<<< orphan*/  dvb_fe; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  active_feed; int /*<<< orphan*/  users; } ;
struct poseidon {struct pd_dvb_adapter dvb_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct poseidon *pd)
{
	struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;

	while (FUNC0(&pd_dvb->users) != 0
		|| FUNC0(&pd_dvb->active_feed) != 0) {
		FUNC6(TASK_INTERRUPTIBLE);
		FUNC5(HZ);
	}
	FUNC1(&pd_dvb->dmxdev);
	FUNC3(&pd_dvb->dvb_fe);
	FUNC2(&pd_dvb->dvb_adap);
	FUNC4(pd);
}