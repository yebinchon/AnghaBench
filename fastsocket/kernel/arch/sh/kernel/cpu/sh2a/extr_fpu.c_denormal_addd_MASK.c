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
 unsigned long long FUNC0 (unsigned long long,unsigned long long) ; 
 unsigned long long FUNC1 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static long long FUNC2(long long hx, long long hy)
{
	unsigned long long ix, iy;
	long long sign;

	if ((hx ^ hy) & 0x8000000000000000LL) {
		sign = hx & 0x8000000000000000LL;
		ix = hx & 0x7fffffffffffffffLL;
		iy = hy & 0x7fffffffffffffffLL;
		if (iy < 0x0010000000000000LL) {
			ix = FUNC1(ix, iy);
			if ((int) ix < 0) {
				ix = -ix;
				sign ^= 0x8000000000000000LL;
			}
		} else {
			ix = FUNC1(iy, ix);
			sign ^= 0x8000000000000000LL;
		}
	} else {
		sign = hx & 0x8000000000000000LL;
		ix = hx & 0x7fffffffffffffffLL;
		iy = hy & 0x7fffffffffffffffLL;
		if (iy < 0x0010000000000000LL)
			ix = FUNC0(ix, iy);
		else
			ix = FUNC0(iy, ix);
	}

	return sign | ix;
}