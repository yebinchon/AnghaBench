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
struct gameport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct gameport *gameport)
{
	int seq[] = { 4, -2, -3, 10, -6, -11, -7, -9, 11, 0 };
	int i;

	for (i = 0; seq[i]; i++) {
		FUNC0(gameport);
		if (seq[i] > 0)
			FUNC2(seq[i]);
		if (seq[i] < 0) {
			FUNC1(-seq[i]);
			FUNC3(-seq[i]*14);	/* It looks like mdelay() is off by approx 1.4% */
		}
	}
}