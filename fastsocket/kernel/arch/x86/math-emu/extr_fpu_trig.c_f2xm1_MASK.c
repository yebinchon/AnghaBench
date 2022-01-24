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
typedef  int u_char ;
typedef  int /*<<< orphan*/  FPU_REG ;

/* Variables and functions */
 int /*<<< orphan*/  CONST_1 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int TAG_Special ; 
 int TAG_Valid ; 
 int TAG_Zero ; 
#define  TW_Denormal 129 
#define  TW_Infinity 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC12(FPU_REG *st0_ptr, u_char tag)
{
	FPU_REG a;

	FUNC3();

	if (tag == TAG_Valid) {
		/* For an 80486 FPU, the result is undefined if the arg is >= 1.0 */
		if (FUNC5(st0_ptr) < 0) {
		      denormal_arg:

			FUNC2(st0_ptr, &a);

			/* poly_2xm1(x) requires 0 < st(0) < 1. */
			FUNC7(FUNC6(st0_ptr), &a, st0_ptr);
		}
		FUNC8();	/* 80486 appears to always do this */
		return;
	}

	if (tag == TAG_Zero)
		return;

	if (tag == TAG_Special)
		tag = FUNC0(st0_ptr);

	switch (tag) {
	case TW_Denormal:
		if (FUNC4() < 0)
			return;
		goto denormal_arg;
	case TW_Infinity:
		if (FUNC10(st0_ptr)) {
			/* -infinity gives -1 (p16-10) */
			FUNC1(&CONST_1, TAG_Valid);
			FUNC9(st0_ptr);
		}
		return;
	default:
		FUNC11(st0_ptr, tag);
	}
}