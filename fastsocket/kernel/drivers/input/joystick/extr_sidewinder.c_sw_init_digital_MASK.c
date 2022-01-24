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
 int SW_TIMEOUT ; 
 int FUNC0 (struct gameport*) ; 
 int FUNC1 (struct gameport*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct gameport *gameport)
{
	int seq[] = { 140, 140+725, 140+300, 0 };
	unsigned long flags;
	int i, t;

        FUNC4(flags);

	i = 0;
        do {
                FUNC2(gameport);			/* Trigger */
		t = FUNC1(gameport, SW_TIMEOUT * 1000);
		while ((FUNC0(gameport) & 1) && t) t--;	/* Wait for axis to fall back to 0 */
                FUNC5(seq[i]);					/* Delay magic time */
        } while (seq[++i]);

	FUNC2(gameport);				/* Last trigger */

	FUNC3(flags);
}