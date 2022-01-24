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
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  FPU_REG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FULL_PRECISION ; 
 scalar_t__ TAG_Special ; 
 scalar_t__ TAG_Valid ; 
 scalar_t__ TAG_Zero ; 
 scalar_t__ TW_Denormal ; 
 scalar_t__ TW_Infinity ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(FPU_REG *st0_ptr, u_char tag)
{
	u_char arg_sign = FUNC8(st0_ptr);

	if (tag == TAG_Valid) {
		int q;

		if (FUNC7(st0_ptr) > -40) {
			if ((q = FUNC14(st0_ptr, 0)) == -1) {
				/* Operand is out of range */
				return 1;
			}

			FUNC9(st0_ptr);

			if (q & 2)
				FUNC5(st0_ptr);

			FUNC12(st0_ptr, FUNC8(st0_ptr) ^ arg_sign);

			/* We do not really know if up or down */
			FUNC10();
			return 0;
		} else {
			/* For a small arg, the result == the argument */
			FUNC10();	/* Must be up. */
			return 0;
		}
	}

	if (tag == TAG_Zero) {
		FUNC11(0);
		return 0;
	}

	if (tag == TAG_Special)
		tag = FUNC0(st0_ptr);

	if (tag == TW_Denormal) {
		if (FUNC6() < 0)
			return 1;

		/* For a small arg, the result == the argument */
		/* Underflow may happen */
		FUNC3(st0_ptr, st0_ptr);

		tag = FUNC1(st0_ptr, 1, 0, FULL_PRECISION, arg_sign);

		FUNC2(tag);

		return 0;
	} else if (tag == TW_Infinity) {
		/* The 80486 treats infinity as an invalid operand */
		FUNC4(0);
		return 1;
	} else {
		FUNC13(st0_ptr, tag);
		return 1;
	}
}