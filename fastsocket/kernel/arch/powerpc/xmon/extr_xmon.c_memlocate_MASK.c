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
 int FUNC0 (unsigned char*) ; 
 char* last_cmd ; 
 int mask ; 
 unsigned int mdest ; 
 unsigned int mend ; 
 int FUNC1 (unsigned int,unsigned char*,int) ; 
 int mval ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 char termch ; 

__attribute__((used)) static void
FUNC4(void)
{
	unsigned a, n;
	unsigned char val[4];

	last_cmd = "ml";
	FUNC3((void *)&mdest);
	if (termch != '\n') {
		termch = 0;
		FUNC3((void *)&mend);
		if (termch != '\n') {
			termch = 0;
			FUNC3((void *)&mval);
			mask = ~0;
			if (termch != '\n') termch = 0;
			FUNC3((void *)&mask);
		}
	}
	n = 0;
	for (a = mdest; a < mend; a += 4) {
		if (FUNC1(a, val, 4) == 4
			&& ((FUNC0(val) ^ mval) & mask) == 0) {
			FUNC2("%.16x:  %.16x\n", a, FUNC0(val));
			if (++n >= 10)
				break;
		}
	}
}