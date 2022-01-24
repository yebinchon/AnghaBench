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
typedef  int s32 ;

/* Variables and functions */
 int FPSCR_C ; 
 int FPSCR_IOC ; 
 int FPSCR_N ; 
 int FPSCR_V ; 
 int FPSCR_Z ; 
 int VFP_SINGLE_MANTISSA_BITS ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static u32 FUNC5(int sd, int signal_on_qnan, s32 m, u32 fpscr)
{
	s32 d;
	u32 ret = 0;

	d = FUNC0(sd);
	if (FUNC2(m) == 255 && FUNC3(m)) {
		ret |= FPSCR_C | FPSCR_V;
		if (signal_on_qnan || !(FUNC3(m) & (1 << (VFP_SINGLE_MANTISSA_BITS - 1))))
			/*
			 * Signalling NaN, or signalling on quiet NaN
			 */
			ret |= FPSCR_IOC;
	}

	if (FUNC2(d) == 255 && FUNC3(d)) {
		ret |= FPSCR_C | FPSCR_V;
		if (signal_on_qnan || !(FUNC3(d) & (1 << (VFP_SINGLE_MANTISSA_BITS - 1))))
			/*
			 * Signalling NaN, or signalling on quiet NaN
			 */
			ret |= FPSCR_IOC;
	}

	if (ret == 0) {
		if (d == m || FUNC1(d | m) == 0) {
			/*
			 * equal
			 */
			ret |= FPSCR_Z | FPSCR_C;
		} else if (FUNC4(d ^ m)) {
			/*
			 * different signs
			 */
			if (FUNC4(d))
				/*
				 * d is negative, so d < m
				 */
				ret |= FPSCR_N;
			else
				/*
				 * d is positive, so d > m
				 */
				ret |= FPSCR_C;
		} else if ((FUNC4(d) != 0) ^ (d < m)) {
			/*
			 * d < m
			 */
			ret |= FPSCR_N;
		} else if ((FUNC4(d) != 0) ^ (d > m)) {
			/*
			 * d > m
			 */
			ret |= FPSCR_C;
		}
	}
	return ret;
}