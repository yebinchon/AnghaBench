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
typedef  int /*<<< orphan*/  ieee754dp ;

/* Variables and functions */
 int /*<<< orphan*/  CLEARCX ; 
 int /*<<< orphan*/  COMPXDP ; 
 int /*<<< orphan*/  DPDNORMX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EXPLODEXDP ; 
#define  IEEE754_CLASS_DNORM 133 
#define  IEEE754_CLASS_INF 132 
#define  IEEE754_CLASS_NORM 131 
#define  IEEE754_CLASS_QNAN 130 
#define  IEEE754_CLASS_SNAN 129 
#define  IEEE754_CLASS_ZERO 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int xc ; 
 scalar_t__ xe ; 
 int xm ; 
 int /*<<< orphan*/  xs ; 

ieee754dp FUNC2(ieee754dp x, int n)
{
	COMPXDP;

	CLEARCX;

	EXPLODEXDP;

	switch (xc) {
	case IEEE754_CLASS_SNAN:
		return FUNC1(x, "scalb", x, n);
	case IEEE754_CLASS_QNAN:
	case IEEE754_CLASS_INF:
	case IEEE754_CLASS_ZERO:
		return x;
	case IEEE754_CLASS_DNORM:
		DPDNORMX;
		break;
	case IEEE754_CLASS_NORM:
		break;
	}
	FUNC0(xs, xe + n, xm << 3, "scalb", x, n);
}