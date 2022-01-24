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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 unsigned int COUNTEN ; 
 unsigned int INTEN ; 
 unsigned int PRESCALE ; 
 int /*<<< orphan*/  REG_TCSR0 ; 
 int /*<<< orphan*/  REG_TICR0 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(unsigned long evt,
		struct clock_event_device *clk)
{
	unsigned int val;

	FUNC1(evt, REG_TICR0);

	val = FUNC0(REG_TCSR0);
	val |= (COUNTEN | INTEN | PRESCALE);
	FUNC1(val, REG_TCSR0);

	return 0;
}