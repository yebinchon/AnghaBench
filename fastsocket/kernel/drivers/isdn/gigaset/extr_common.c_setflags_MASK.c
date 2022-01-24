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
struct cardstate {unsigned int control_state; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_modem_ctrl ) (struct cardstate*,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 unsigned int HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cardstate*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct cardstate *cs, unsigned flags, unsigned delay)
{
	int r;

	r = cs->ops->set_modem_ctrl(cs, cs->control_state, flags);
	cs->control_state = flags;
	if (r < 0)
		return r;

	if (delay) {
		FUNC1(TASK_INTERRUPTIBLE);
		FUNC0(delay * HZ / 1000);
	}

	return 0;
}