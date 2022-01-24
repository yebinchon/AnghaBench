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
 unsigned int mdest ; 
 unsigned int mlim ; 
 int FUNC0 (unsigned int,unsigned char*,int) ; 
 unsigned int mskip ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 
 char termch ; 

__attribute__((used)) static void
FUNC3(void)
{
	unsigned char v;
	unsigned a;
	int ok, ook;

	FUNC2(&mdest);
	if (termch != '\n') termch = 0;
	FUNC2(&mskip);
	if (termch != '\n') termch = 0;
	FUNC2(&mlim);
	ook = 0;
	for (a = mdest; a < mlim; a += mskip) {
		ok = FUNC0(a, &v, 1);
		if (ok && !ook) {
			FUNC1("%.8x .. ", a);
		} else if (!ok && ook)
			FUNC1("%.8x\n", a - mskip);
		ook = ok;
		if (a + mskip < a)
			break;
	}
	if (ook)
		FUNC1("%.8x\n", a - mskip);
}