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
typedef  int u32 ;
typedef  int s64 ;

/* Variables and functions */
 int FPSCR_C ; 
 int FPSCR_IOC ; 
 int FPSCR_N ; 
 int FPSCR_V ; 
 int FPSCR_Z ; 
 int VFP_DOUBLE_MANTISSA_BITS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 unsigned long long FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static u32 FUNC5(int dd, int signal_on_qnan, int dm, u32 fpscr)
{
	s64 d, m;
	u32 ret = 0;

	m = FUNC4(dm);
	if (FUNC1(m) == 2047 && FUNC2(m)) {
		ret |= FPSCR_C | FPSCR_V;
		if (signal_on_qnan || !(FUNC2(m) & (1ULL << (VFP_DOUBLE_MANTISSA_BITS - 1))))
			/*
			 * Signalling NaN, or signalling on quiet NaN
			 */
			ret |= FPSCR_IOC;
	}

	d = FUNC4(dd);
	if (FUNC1(d) == 2047 && FUNC2(d)) {
		ret |= FPSCR_C | FPSCR_V;
		if (signal_on_qnan || !(FUNC2(d) & (1ULL << (VFP_DOUBLE_MANTISSA_BITS - 1))))
			/*
			 * Signalling NaN, or signalling on quiet NaN
			 */
			ret |= FPSCR_IOC;
	}

	if (ret == 0) {
		if (d == m || FUNC0(d | m) == 0) {
			/*
			 * equal
			 */
			ret |= FPSCR_Z | FPSCR_C;
		} else if (FUNC3(d ^ m)) {
			/*
			 * different signs
			 */
			if (FUNC3(d))
				/*
				 * d is negative, so d < m
				 */
				ret |= FPSCR_N;
			else
				/*
				 * d is positive, so d > m
				 */
				ret |= FPSCR_C;
		} else if ((FUNC3(d) != 0) ^ (d < m)) {
			/*
			 * d < m
			 */
			ret |= FPSCR_N;
		} else if ((FUNC3(d) != 0) ^ (d > m)) {
			/*
			 * d > m
			 */
			ret |= FPSCR_C;
		}
	}

	return ret;
}