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
struct TYPE_2__ {int (* start ) () ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int op_arm_enabled ; 
 TYPE_1__* op_arm_model ; 
 int /*<<< orphan*/  op_arm_mutex ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret = -EBUSY;

	FUNC0(&op_arm_mutex);
	if (!op_arm_enabled) {
		ret = op_arm_model->start();
		op_arm_enabled = !ret;
	}
	FUNC1(&op_arm_mutex);
	return ret;
}