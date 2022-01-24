#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* m32; scalar_t__ m64; } ;
struct fp_ext {int sign; int exp; TYPE_1__ mant; scalar_t__ lowmant; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPSR_EXC_DZ ; 
 int /*<<< orphan*/  FPSR_EXC_UNFL ; 
 scalar_t__ FUNC0 (struct fp_ext*) ; 
 scalar_t__ FUNC1 (struct fp_ext*) ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fp_ext*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC6 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC7 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__,TYPE_1__) ; 

struct fp_ext *
FUNC10(struct fp_ext *dest, struct fp_ext *src)
{
	int exp;
	unsigned long quot, rem;

	FUNC2(PINSTR, "fsgldiv\n");

	FUNC5(dest, src);

	/* calculate the correct sign now, as it's necessary for infinities */
	dest->sign = src->sign ^ dest->sign;

	/* Handle infinities */
	if (FUNC0(dest)) {
		/* infinity / infinity = NaN (quiet, as always) */
		if (FUNC0(src))
			FUNC6(dest);
		/* infinity / anything else = infinity (with approprate sign) */
		return dest;
	}
	if (FUNC0(src)) {
		/* anything / infinity = zero (with appropriate sign) */
		dest->exp = 0;
		dest->mant.m64 = 0;
		dest->lowmant = 0;

		return dest;
	}

	/* zeroes */
	if (FUNC1(dest)) {
		/* zero / zero = NaN */
		if (FUNC1(src))
			FUNC6(dest);
		/* zero / anything else = zero */
		return dest;
	}
	if (FUNC1(src)) {
		/* anything / zero = infinity (with appropriate sign) */
		FUNC8(FPSR_EXC_DZ);
		dest->exp = 0x7fff;
		dest->mant.m64 = 0;

		return dest;
	}

	exp = dest->exp - src->exp + 0x3fff;

	dest->mant.m32[0] &= 0xffffff00;
	src->mant.m32[0] &= 0xffffff00;

	/* do the 32-bit divide */
	if (dest->mant.m32[0] >= src->mant.m32[0]) {
		FUNC9(dest->mant, src->mant);
		FUNC4(quot, rem, dest->mant.m32[0], 0, src->mant.m32[0]);
		dest->mant.m32[0] = 0x80000000 | (quot >> 1);
		dest->mant.m32[1] = (quot & 1) | rem;	/* only for rounding */
	} else {
		FUNC4(quot, rem, dest->mant.m32[0], 0, src->mant.m32[0]);
		dest->mant.m32[0] = quot;
		dest->mant.m32[1] = rem;		/* only for rounding */
		exp--;
	}

	if (exp >= 0x7fff) {
		FUNC7(dest);
		return dest;
	}
	dest->exp = exp;
	if (exp < 0) {
		FUNC8(FPSR_EXC_UNFL);
		FUNC3(dest, -exp);
	}

	return dest;
}