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
typedef  int u64 ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ieee754dp ;

/* Variables and functions */
 int /*<<< orphan*/  CLEARCX ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,char*,int) ; 
 int DP_MBITS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ieee754dp FUNC5(s64 x)
{
	u64 xm;
	int xe;
	int xs;

	CLEARCX;

	if (x == 0)
		return FUNC4(0);
	if (x == 1 || x == -1)
		return FUNC2(x < 0);
	if (x == 10 || x == -10)
		return FUNC3(x < 0);

	xs = (x < 0);
	if (xs) {
		if (x == (1ULL << 63))
			xm = (1ULL << 63);	/* max neg can't be safely negated */
		else
			xm = -x;
	} else {
		xm = x;
	}

	/* normalize */
	xe = DP_MBITS + 3;
	if (xm >> (DP_MBITS + 1 + 3)) {
		/* shunt out overflow bits */
		while (xm >> (DP_MBITS + 1 + 3)) {
			FUNC1();
		}
	} else {
		/* normalize in grs extended double precision */
		while ((xm >> (DP_MBITS + 3)) == 0) {
			xm <<= 1;
			xe--;
		}
	}
	FUNC0(xs, xe, xm, "dp_flong", x);
}