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
struct icst525_vco {int s; unsigned int v; unsigned int r; } ;
struct icst525_params {unsigned int vd_max; unsigned int rd_max; unsigned long vco_max; unsigned int rd_min; int ref; unsigned int vd_min; } ;

/* Variables and functions */
 unsigned int FUNC0 (size_t*) ; 
 size_t* idx2s ; 
 unsigned long* s2div ; 

struct icst525_vco
FUNC1(const struct icst525_params *p, unsigned long freq)
{
	struct icst525_vco vco = { .s = 1, .v = p->vd_max, .r = p->rd_max };
	unsigned long f;
	unsigned int i = 0, rd, best = (unsigned int)-1;

	/*
	 * First, find the PLL output divisor such
	 * that the PLL output is within spec.
	 */
	do {
		f = freq * s2div[idx2s[i]];

		/*
		 * f must be between 10MHz and
		 *  320MHz (5V) or 200MHz (3V)
		 */
		if (f > 10000 && f <= p->vco_max)
			break;
	} while (i < FUNC0(idx2s));

	if (i >= FUNC0(idx2s))
		return vco;

	vco.s = idx2s[i];

	/*
	 * Now find the closest divisor combination
	 * which gives a PLL output of 'f'.
	 */
	for (rd = p->rd_min; rd <= p->rd_max; rd++) {
		unsigned long fref_div, f_pll;
		unsigned int vd;
		int f_diff;

		fref_div = (2 * p->ref) / rd;

		vd = (f + fref_div / 2) / fref_div;
		if (vd < p->vd_min || vd > p->vd_max)
			continue;

		f_pll = fref_div * vd;
		f_diff = f_pll - f;
		if (f_diff < 0)
			f_diff = -f_diff;

		if ((unsigned)f_diff < best) {
			vco.v = vd - 8;
			vco.r = rd - 2;
			if (f_diff == 0)
				break;
			best = f_diff;
		}
	}

	return vco;
}