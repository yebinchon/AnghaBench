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
 int /*<<< orphan*/  CONST_INF ; 
 int /*<<< orphan*/  CONST_Z ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EX_INTERNAL ; 
 int EX_Invalid ; 
 int EX_StackUnder ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGN_NEG ; 
 scalar_t__ STACK_OVERFLOW ; 
 scalar_t__ TAG_Empty ; 
 scalar_t__ TAG_Special ; 
 scalar_t__ TAG_Valid ; 
 scalar_t__ TAG_Zero ; 
 scalar_t__ TW_Denormal ; 
 scalar_t__ TW_Infinity ; 
 scalar_t__ TW_NaN ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int control_word ; 
 int /*<<< orphan*/  FUNC9 (long*,int) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 long FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC21(FPU_REG *st0_ptr, u_char st0_tag)
{
	FPU_REG *st_new_ptr;
	u_char sign;
	register FPU_REG *st1_ptr = st0_ptr;	/* anticipate */

	if (STACK_OVERFLOW) {
		FUNC5();
		return;
	}

	FUNC8();

	if (st0_tag == TAG_Valid) {
		long e;

		FUNC14();
		sign = FUNC13(st1_ptr);
		FUNC16(st1_ptr, st_new_ptr);
		FUNC17(st_new_ptr, FUNC11(st_new_ptr));

	      denormal_arg:

		e = FUNC12(st_new_ptr);
		FUNC9(&e, 1);
		FUNC18(st_new_ptr, 0);
		FUNC20(st_new_ptr, sign);
		FUNC4(TAG_Valid);	/* Needed if arg was a denormal */
		return;
	} else if (st0_tag == TAG_Zero) {
		sign = FUNC13(st0_ptr);

		if (FUNC3(0, SIGN_NEG) < 0)
			return;

		FUNC14();
		FUNC2(&CONST_Z, TAG_Zero);
		FUNC20(st_new_ptr, sign);
		return;
	}

	if (st0_tag == TAG_Special)
		st0_tag = FUNC1(st0_ptr);

	if (st0_tag == TW_Denormal) {
		if (FUNC10() < 0)
			return;

		FUNC14();
		sign = FUNC13(st1_ptr);
		FUNC7(st1_ptr, st_new_ptr);
		goto denormal_arg;
	} else if (st0_tag == TW_Infinity) {
		sign = FUNC13(st0_ptr);
		FUNC19(st0_ptr);
		FUNC14();
		FUNC2(&CONST_INF, TAG_Special);
		FUNC20(st_new_ptr, sign);
		return;
	} else if (st0_tag == TW_NaN) {
		if (FUNC15(st0_ptr) < 0)
			return;

		FUNC14();
		FUNC2(st0_ptr, TAG_Special);
		return;
	} else if (st0_tag == TAG_Empty) {
		/* Is this the correct behaviour? */
		if (control_word & EX_Invalid) {
			FUNC6();
			FUNC14();
			FUNC6();
		} else
			FUNC0(EX_StackUnder);
	}
#ifdef PARANOID
	else
		EXCEPTION(EX_INTERNAL | 0x119);
#endif /* PARANOID */
}