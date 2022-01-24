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
struct clock_event_device {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(unsigned long delta,
			     struct clock_event_device *ced)
{
	int ced_cpu = FUNC0(ced->cpumask);

	return FUNC2(ced_cpu, delta + FUNC1(NULL));
}