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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (long long,unsigned int) ; 

unsigned long FUNC3(unsigned int reg_val, u32 freq)
{
	long long ll;
	int mfn_abs;
	unsigned int mfi, mfn, mfd, pd;

	mfi = (reg_val >> 10) & 0xf;
	mfn = reg_val & 0x3ff;
	mfd = (reg_val >> 16) & 0x3ff;
	pd =  (reg_val >> 26) & 0xf;

	mfi = mfi <= 5 ? 5 : mfi;

	mfn_abs = mfn;

	/* On all i.MXs except i.MX1 and i.MX21 mfn is a 10bit
	 * 2's complements number
	 */
	if (!FUNC0() && !FUNC1() && mfn >= 0x200)
		mfn_abs = 0x400 - mfn;

	freq *= 2;
	freq /= pd + 1;

	ll = (unsigned long long)freq * mfn_abs;

	FUNC2(ll, mfd + 1);

	if (!FUNC0() && !FUNC1() && mfn >= 0x200)
		ll = -ll;

	ll = (freq * mfi) + ll;

	return ll;
}