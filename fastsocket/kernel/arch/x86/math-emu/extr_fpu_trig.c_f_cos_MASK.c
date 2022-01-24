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
 int /*<<< orphan*/  CONST_1 ; 
 int /*<<< orphan*/  FCOS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ TAG_Special ; 
 scalar_t__ TAG_Valid ; 
 scalar_t__ TAG_Zero ; 
 scalar_t__ TW_Denormal ; 
 scalar_t__ TW_Infinity ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(FPU_REG *st0_ptr, u_char tag)
{
	u_char st0_sign;

	st0_sign = FUNC6(st0_ptr);

	if (tag == TAG_Valid) {
		int q;

		if (FUNC5(st0_ptr) > -40) {
			if ((FUNC5(st0_ptr) < 0)
			    || ((FUNC5(st0_ptr) == 0)
				&& (FUNC12(st0_ptr) <=
				    0xc90fdaa22168c234LL))) {
				FUNC7(st0_ptr);

				/* We do not really know if up or down */
				FUNC9();

				return 0;
			} else if ((q = FUNC14(st0_ptr, FCOS)) != -1) {
				FUNC8(st0_ptr);

				if ((q + 1) & 2)
					FUNC3(st0_ptr);

				/* We do not really know if up or down */
				FUNC9();

				return 0;
			} else {
				/* Operand is out of range */
				return 1;
			}
		} else {
		      denormal_arg:

			FUNC11(0);
			FUNC1(&CONST_1, TAG_Valid);
#ifdef PECULIAR_486
			set_precision_flag_down();	/* 80486 appears to do this. */
#else
			FUNC10();	/* Must be up. */
#endif /* PECULIAR_486 */
			return 0;
		}
	} else if (tag == TAG_Zero) {
		FUNC1(&CONST_1, TAG_Valid);
		FUNC11(0);
		return 0;
	}

	if (tag == TAG_Special)
		tag = FUNC0(st0_ptr);

	if (tag == TW_Denormal) {
		if (FUNC4() < 0)
			return 1;

		goto denormal_arg;
	} else if (tag == TW_Infinity) {
		/* The 80486 treats infinity as an invalid operand */
		FUNC2(0);
		return 1;
	} else {
		FUNC13(st0_ptr, tag);	/* requires st0_ptr == &st(0) */
		return 1;
	}
}