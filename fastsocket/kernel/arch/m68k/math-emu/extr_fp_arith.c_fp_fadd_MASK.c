#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ m64; } ;
struct fp_ext {scalar_t__ sign; int exp; TYPE_1__ mant; scalar_t__ lowmant; } ;
struct TYPE_4__ {scalar_t__ rnd; } ;

/* Variables and functions */
 scalar_t__ FPCR_ROUND_RM ; 
 TYPE_2__* FPDATA ; 
 scalar_t__ FUNC0 (struct fp_ext*) ; 
 scalar_t__ FUNC1 (struct fp_ext*) ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fp_ext*) ; 
 scalar_t__ FUNC4 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC5 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC6 (struct fp_ext*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC8 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC9 (struct fp_ext*,struct fp_ext*,struct fp_ext*) ; 

struct fp_ext *
FUNC10(struct fp_ext *dest, struct fp_ext *src)
{
	int diff;

	FUNC2(PINSTR, "fadd\n");

	FUNC7(dest, src);

	if (FUNC0(dest)) {
		/* infinity - infinity == NaN */
		if (FUNC0(src) && (src->sign != dest->sign))
			FUNC8(dest);
		return dest;
	}
	if (FUNC0(src)) {
		FUNC5(dest, src);
		return dest;
	}

	if (FUNC1(dest)) {
		if (FUNC1(src)) {
			if (src->sign != dest->sign) {
				if (FPDATA->rnd == FPCR_ROUND_RM)
					dest->sign = 1;
				else
					dest->sign = 0;
			}
		} else
			FUNC5(dest, src);
		return dest;
	}

	dest->lowmant = src->lowmant = 0;

	if ((diff = dest->exp - src->exp) > 0)
		FUNC6(src, diff);
	else if ((diff = -diff) > 0)
		FUNC6(dest, diff);

	if (dest->sign == src->sign) {
		if (FUNC4(dest, src))
			if (!FUNC3(dest))
				return dest;
	} else {
		if (dest->mant.m64 < src->mant.m64) {
			FUNC9(dest, src, dest);
			dest->sign = !dest->sign;
		} else
			FUNC9(dest, dest, src);
	}

	return dest;
}