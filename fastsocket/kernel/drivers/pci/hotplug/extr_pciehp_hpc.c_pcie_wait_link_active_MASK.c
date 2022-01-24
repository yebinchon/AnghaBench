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
struct controller {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct controller *ctrl)
{
	int timeout = 1000;

	if (FUNC0(ctrl))
		return;
	while (timeout > 0) {
		FUNC2(10);
		timeout -= 10;
		if (FUNC0(ctrl))
			return;
	}
	FUNC1(ctrl, "Data Link Layer Link Active not set in 1000 msec\n");
}