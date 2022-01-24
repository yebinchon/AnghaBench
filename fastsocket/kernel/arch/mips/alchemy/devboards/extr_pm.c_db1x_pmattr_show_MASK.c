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
struct kobject {int dummy; } ;
struct TYPE_2__ {int* name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOENT ; 
 int FUNC1 (int) ; 
 int SYS_WAKEMSK_M2 ; 
 int db1x_pm_last_wakesrc ; 
 int db1x_pm_sleep_secs ; 
 int db1x_pm_wakemsk ; 
 int /*<<< orphan*/  gpio0 ; 
 int /*<<< orphan*/  gpio1 ; 
 int /*<<< orphan*/  gpio2 ; 
 int /*<<< orphan*/  gpio3 ; 
 int /*<<< orphan*/  gpio4 ; 
 int /*<<< orphan*/  gpio5 ; 
 int /*<<< orphan*/  gpio6 ; 
 int /*<<< orphan*/  gpio7 ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  timer_timeout ; 
 int /*<<< orphan*/  wakemsk ; 
 int /*<<< orphan*/  wakesrc ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
				struct kobj_attribute *attr,
				char *buf)
{
	int idx;

	if (FUNC0(timer_timeout))
		return FUNC2(buf, "%lu\n", db1x_pm_sleep_secs);

	else if (FUNC0(timer))
		return FUNC2(buf, "%u\n",
				!!(db1x_pm_wakemsk & SYS_WAKEMSK_M2));

	else if (FUNC0(wakesrc))
		return FUNC2(buf, "%lu\n", db1x_pm_last_wakesrc);

	else if (FUNC0(gpio0) || FUNC0(gpio1) || FUNC0(gpio2) ||
		 FUNC0(gpio3) || FUNC0(gpio4) || FUNC0(gpio5) ||
		 FUNC0(gpio6) || FUNC0(gpio7)) {
		idx = (attr->attr.name)[4] - '0';
		return FUNC2(buf, "%d\n",
			!!(db1x_pm_wakemsk & FUNC1(idx)));

	} else if (FUNC0(wakemsk)) {
		return FUNC2(buf, "%08lx\n", db1x_pm_wakemsk);
	}

	return -ENOENT;
}