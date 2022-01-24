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

/* Variables and functions */
 int /*<<< orphan*/  GPIO2_OUTPUT ; 
 int /*<<< orphan*/  GPIO2_PINSTATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	/* turn off power */
	FUNC2(FUNC0(GPIO2_PINSTATE) | (1<<14)|(1<<30),
			GPIO2_OUTPUT);
	FUNC1(100);

	/* assert reset */
	FUNC2(FUNC0(GPIO2_PINSTATE) | (1<<4)|(1<<20),
			GPIO2_OUTPUT);
	FUNC1(100);
	return 0;
}