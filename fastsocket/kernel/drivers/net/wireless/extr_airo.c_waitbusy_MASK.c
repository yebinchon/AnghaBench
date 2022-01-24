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
struct airo_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND ; 
 int COMMAND_BUSY ; 
 int /*<<< orphan*/  EVACK ; 
 int /*<<< orphan*/  EV_CLEARCOMMANDBUSY ; 
 int FUNC0 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (struct airo_info *ai) {
	int delay = 0;
	while ((FUNC0(ai, COMMAND) & COMMAND_BUSY) && (delay < 10000)) {
		FUNC2 (10);
		if ((++delay % 20) == 0)
			FUNC1(ai, EVACK, EV_CLEARCOMMANDBUSY);
	}
	return delay < 10000;
}