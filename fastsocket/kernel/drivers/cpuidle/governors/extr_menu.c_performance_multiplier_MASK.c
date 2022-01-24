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
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int FUNC3(void)
{
	int mult = 1;

	/* for higher loadavg, we are more reluctant */

	mult += 2 * FUNC0();

	/* for IO wait tasks (per cpu!) we add 5x each */
	mult += 10 * FUNC1(FUNC2());

	return mult;
}