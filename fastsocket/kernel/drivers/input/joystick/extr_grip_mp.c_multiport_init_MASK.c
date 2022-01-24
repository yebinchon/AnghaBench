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
typedef  int /*<<< orphan*/  u32 ;
struct grip_mp {int /*<<< orphan*/  gameport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct grip_mp*) ; 

__attribute__((used)) static int FUNC3(struct grip_mp *grip)
{
	int dig_mode, initialized = 0, tries = 0;
	u32 packet;

	dig_mode = FUNC1(grip->gameport, &packet);
	while (!dig_mode && tries < 4) {
		dig_mode = FUNC1(grip->gameport, &packet);
		tries++;
	}

	if (dig_mode)
		FUNC0("multiport_init(): digital mode activated.\n");
	else {
		FUNC0("multiport_init(): unable to activate digital mode.\n");
		return 0;
	}

	/* Get packets, store multiport state, and check state's validity */
	for (tries = 0; tries < 4096; tries++) {
		if (FUNC2(grip)) {
			initialized = 1;
			break;
		}
	}
	FUNC0("multiport_init(): initialized == %d\n", initialized);
	return initialized;
}