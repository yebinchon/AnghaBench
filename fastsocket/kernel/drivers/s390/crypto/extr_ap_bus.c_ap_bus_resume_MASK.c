#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct ap_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  qid; } ;
struct TYPE_4__ {scalar_t__ expires; scalar_t__ data; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int ap_config_time ; 
 int /*<<< orphan*/  ap_config_timeout ; 
 TYPE_1__ ap_config_timer ; 
 int /*<<< orphan*/  ap_config_work ; 
 int ap_domain_index ; 
 int /*<<< orphan*/ * ap_interrupt_indicator ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ ap_suspend_flag ; 
 int /*<<< orphan*/  ap_tasklet ; 
 scalar_t__ ap_thread_flag ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  ap_work_queue ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct ap_device* FUNC17 (struct device*) ; 
 int /*<<< orphan*/  user_set_domain ; 

__attribute__((used)) static int FUNC18(struct device *dev)
{
	int rc = 0;
	struct ap_device *ap_dev = FUNC17(dev);

	if (ap_suspend_flag) {
		ap_suspend_flag = 0;
		if (!FUNC4())
			ap_interrupt_indicator = NULL;
		FUNC6();
		if (!user_set_domain) {
			ap_domain_index = -1;
			FUNC8();
		}
		FUNC11(&ap_config_timer);
		ap_config_timer.function = ap_config_timeout;
		ap_config_timer.data = 0;
		ap_config_timer.expires = jiffies + ap_config_time * HZ;
		FUNC3(&ap_config_timer);
		ap_work_queue = FUNC10("kapwork");
		if (!ap_work_queue)
			return -ENOMEM;
		FUNC15(&ap_tasklet);
		if (!FUNC9())
			FUNC7();
		else
			FUNC16(&ap_tasklet);
		if (ap_thread_flag)
			rc = FUNC5();
	}
	if (FUNC2(ap_dev->qid) != ap_domain_index) {
		FUNC13(&ap_dev->lock);
		ap_dev->qid = FUNC0(FUNC1(ap_dev->qid),
				       ap_domain_index);
		FUNC14(&ap_dev->lock);
	}
	FUNC12(ap_work_queue, &ap_config_work);

	return rc;
}