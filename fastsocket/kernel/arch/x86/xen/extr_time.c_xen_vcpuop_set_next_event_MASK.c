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
struct vcpu_set_singleshot_timer {int /*<<< orphan*/  flags; int /*<<< orphan*/  timeout_abs_ns; } ;
struct clock_event_device {scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ; 
 int ETIME ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct vcpu_set_singleshot_timer*) ; 
 int /*<<< orphan*/  VCPUOP_set_singleshot_timer ; 
 int /*<<< orphan*/  VCPU_SSHOTTMR_future ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(unsigned long delta,
				     struct clock_event_device *evt)
{
	int cpu = FUNC4();
	struct vcpu_set_singleshot_timer single;
	int ret;

	FUNC2(evt->mode != CLOCK_EVT_MODE_ONESHOT);

	single.timeout_abs_ns = FUNC3(delta);
	single.flags = VCPU_SSHOTTMR_future;

	ret = FUNC1(VCPUOP_set_singleshot_timer, cpu, &single);

	FUNC0(ret != 0 && ret != -ETIME);

	return ret;
}