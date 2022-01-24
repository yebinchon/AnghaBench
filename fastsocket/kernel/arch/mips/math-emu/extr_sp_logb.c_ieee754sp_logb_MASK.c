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
typedef  int /*<<< orphan*/  ieee754sp ;

/* Variables and functions */
 int /*<<< orphan*/  CLEARCX ; 
 int /*<<< orphan*/  COMPXSP ; 
 int /*<<< orphan*/  EXPLODEXSP ; 
#define  IEEE754_CLASS_DNORM 133 
#define  IEEE754_CLASS_INF 132 
#define  IEEE754_CLASS_NORM 131 
#define  IEEE754_CLASS_QNAN 130 
#define  IEEE754_CLASS_SNAN 129 
#define  IEEE754_CLASS_ZERO 128 
 int /*<<< orphan*/  SPDNORMX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int xc ; 
 int /*<<< orphan*/  xe ; 

ieee754sp FUNC3(ieee754sp x)
{
	COMPXSP;

	CLEARCX;

	EXPLODEXSP;

	switch (xc) {
	case IEEE754_CLASS_SNAN:
		return FUNC2(x, "logb", x);
	case IEEE754_CLASS_QNAN:
		return x;
	case IEEE754_CLASS_INF:
		return FUNC1(0);
	case IEEE754_CLASS_ZERO:
		return FUNC1(1);
	case IEEE754_CLASS_DNORM:
		SPDNORMX;
		break;
	case IEEE754_CLASS_NORM:
		break;
	}
	return FUNC0(xe);
}