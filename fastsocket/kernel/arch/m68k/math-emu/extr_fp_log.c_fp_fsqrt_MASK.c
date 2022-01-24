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
struct fp_ext {int exp; scalar_t__ sign; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fp_ext*) ; 
 scalar_t__ FUNC1 (struct fp_ext*) ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC4 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC5 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC6 (struct fp_ext*,struct fp_ext*) ; 
 struct fp_ext fp_one ; 
 int /*<<< orphan*/  FUNC7 (struct fp_ext*) ; 

struct fp_ext *
FUNC8(struct fp_ext *dest, struct fp_ext *src)
{
	struct fp_ext tmp, src2;
	int i, exp;

	FUNC2(PINSTR, "fsqrt\n");

	FUNC6(dest, src);

	if (FUNC1(dest))
		return dest;

	if (dest->sign) {
		FUNC7(dest);
		return dest;
	}
	if (FUNC0(dest))
		return dest;

	/*
	 *		 sqrt(m) * 2^(p)	, if e = 2*p
	 * sqrt(m*2^e) =
	 *		 sqrt(2*m) * 2^(p)	, if e = 2*p + 1
	 *
	 * So we use the last bit of the exponent to decide wether to
	 * use the m or 2*m.
	 *
	 * Since only the fractional part of the mantissa is stored and
	 * the integer part is assumed to be one, we place a 1 or 2 into
	 * the fixed point representation.
	 */
	exp = dest->exp;
	dest->exp = 0x3FFF;
	if (!(exp & 1))		/* lowest bit of exponent is set */
		dest->exp++;
	FUNC3(&src2, dest);

	/*
	 * The taylor row around a for sqrt(x) is:
	 *	sqrt(x) = sqrt(a) + 1/(2*sqrt(a))*(x-a) + R
	 * With a=1 this gives:
	 *	sqrt(x) = 1 + 1/2*(x-1)
	 *		= 1/2*(1+x)
	 */
	FUNC4(dest, &fp_one);
	dest->exp--;		/* * 1/2 */

	/*
	 * We now apply the newton rule to the function
	 *	f(x) := x^2 - r
	 * which has a null point on x = sqrt(r).
	 *
	 * It gives:
	 *	x' := x - f(x)/f'(x)
	 *	    = x - (x^2 -r)/(2*x)
	 *	    = x - (x - r/x)/2
	 *          = (2*x - x + r/x)/2
	 *	    = (x + r/x)/2
	 */
	for (i = 0; i < 9; i++) {
		FUNC3(&tmp, &src2);

		FUNC5(&tmp, dest);
		FUNC4(dest, &tmp);
		dest->exp--;
	}

	dest->exp += (exp - 0x3FFF) / 2;

	return dest;
}