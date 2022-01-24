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
struct vfp_single {int significand; int exponent; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct vfp_single*) ; 

__attribute__((used)) static void FUNC2(struct vfp_single *vs)
{
	int bits = 31 - FUNC0(vs->significand);

	FUNC1("normalise_denormal: in", vs);

	if (bits) {
		vs->exponent -= bits - 1;
		vs->significand <<= bits;
	}

	FUNC1("normalise_denormal: out", vs);
}