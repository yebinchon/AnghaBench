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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGN_POS ; 
 scalar_t__ TAG_Special ; 
 scalar_t__ TAG_Valid ; 
 scalar_t__ TAG_Zero ; 
 scalar_t__ TW_Denormal ; 
 scalar_t__ TW_Infinity ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  control_word ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(FPU_REG *st0_ptr, u_char st0_tag)
{
	int expon;

	FUNC5();

	if (st0_tag == TAG_Valid) {
		u_char tag;

		if (FUNC10(st0_ptr)) {
			FUNC4(0);	/* sqrt(negative) is invalid */
			return;
		}

		/* make st(0) in  [1.0 .. 4.0) */
		expon = FUNC7(st0_ptr);

	      denormal_arg:

		FUNC9(st0_ptr, (expon & 1));

		/* Do the computation, the sign of the result will be positive. */
		tag = FUNC12(st0_ptr, 0, 0, control_word, SIGN_POS);
		FUNC3(st0_ptr, expon >> 1);
		FUNC1(tag);
		return;
	}

	if (st0_tag == TAG_Zero)
		return;

	if (st0_tag == TAG_Special)
		st0_tag = FUNC0(st0_ptr);

	if (st0_tag == TW_Infinity) {
		if (FUNC10(st0_ptr))
			FUNC4(0);	/* sqrt(-Infinity) is invalid */
		return;
	} else if (st0_tag == TW_Denormal) {
		if (FUNC10(st0_ptr)) {
			FUNC4(0);	/* sqrt(negative) is invalid */
			return;
		}

		if (FUNC6() < 0)
			return;

		FUNC2(st0_ptr, st0_ptr);

		expon = FUNC8(st0_ptr);

		goto denormal_arg;
	}

	FUNC11(st0_ptr, st0_tag);

}