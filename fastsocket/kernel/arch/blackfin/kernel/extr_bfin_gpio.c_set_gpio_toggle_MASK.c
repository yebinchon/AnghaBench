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
struct TYPE_2__ {int /*<<< orphan*/  toggle; } ;

/* Variables and functions */
 scalar_t__ ANOMALY_05000311 ; 
 scalar_t__ ANOMALY_05000323 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__** gpio_array ; 
 size_t FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  toggle ; 

void FUNC5(unsigned gpio)
{
	unsigned long flags;
	if (ANOMALY_05000311 || ANOMALY_05000323)
		FUNC4(flags);
	gpio_array[FUNC1(gpio)]->toggle = FUNC2(gpio);
	if (ANOMALY_05000311 || ANOMALY_05000323) {
		FUNC0(toggle);
		FUNC3(flags);
	}
}