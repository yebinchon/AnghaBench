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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  get_freq_data ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static unsigned int FUNC3(unsigned int cpu)
{
	unsigned int speed;

	/* You're supposed to ensure CPU is online. */
	if (FUNC2(cpu, get_freq_data, &speed, 1) != 0)
		FUNC0();

	FUNC1("detected %u kHz as current frequency\n", speed);
	return speed;
}