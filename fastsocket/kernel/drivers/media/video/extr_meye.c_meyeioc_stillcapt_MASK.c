#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* grab_buffer; int /*<<< orphan*/  grab_fbuffer; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ MEYE_BUF_DONE ; 
 scalar_t__ MEYE_BUF_UNUSED ; 
 scalar_t__ MEYE_BUF_USING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 TYPE_2__ meye ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	if (!meye.grab_fbuffer)
		return -EINVAL;

	if (meye.grab_buffer[0].state != MEYE_BUF_UNUSED)
		return -EBUSY;

	FUNC4(&meye.lock);
	meye.grab_buffer[0].state = MEYE_BUF_USING;
	FUNC2();

	FUNC0(meye.grab_fbuffer,
			FUNC1() * FUNC3() * 2);

	meye.grab_buffer[0].state = MEYE_BUF_DONE;
	FUNC5(&meye.lock);

	return 0;
}