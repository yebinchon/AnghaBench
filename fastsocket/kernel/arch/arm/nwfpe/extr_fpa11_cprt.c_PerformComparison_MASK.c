#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int high; } ;
typedef  TYPE_2__ floatx80 ;
typedef  int float64 ;
typedef  int float32 ;
struct TYPE_15__ {int* fType; TYPE_1__* fpreg; } ;
struct TYPE_13__ {int fSingle; int fDouble; TYPE_2__ fExtended; } ;
typedef  TYPE_3__ FPA11 ;

/* Variables and functions */
 int BIT_AC ; 
 unsigned int CC_CARRY ; 
 unsigned int CC_NEGATIVE ; 
 unsigned int CC_OVERFLOW ; 
 unsigned int CC_ZERO ; 
 scalar_t__ FUNC0 (unsigned int const) ; 
 TYPE_3__* FUNC1 () ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int FUNC5 (int) ; 
 TYPE_2__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int,int) ; 
 TYPE_2__ FUNC10 (int) ; 
 int /*<<< orphan*/  float_flag_invalid ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__,TYPE_2__) ; 
 scalar_t__ FUNC13 (TYPE_2__) ; 
 scalar_t__ FUNC14 (TYPE_2__,TYPE_2__) ; 
 int FUNC15 (unsigned int) ; 
 TYPE_2__ FUNC16 (unsigned int) ; 
 unsigned int FUNC17 (unsigned int const) ; 
 unsigned int FUNC18 (unsigned int const) ; 
 int FUNC19 (unsigned int) ; 
 int FUNC20 () ; 
#define  typeDouble 130 
#define  typeExtended 129 
#define  typeSingle 128 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC22(const unsigned int opcode)
{
	FPA11 *fpa11 = FUNC1();
	unsigned int Fn = FUNC18(opcode), Fm = FUNC17(opcode);
	int e_flag = opcode & 0x400000;	/* 1 if CxFE */
	int n_flag = opcode & 0x200000;	/* 1 if CNxx */
	unsigned int flags = 0;

#ifdef CONFIG_FPE_NWFPE_XP
	floatx80 rFn, rFm;

	/* Check for unordered condition and convert all operands to 80-bit
	   format.
	   ?? Might be some mileage in avoiding this conversion if possible.
	   Eg, if both operands are 32-bit, detect this and do a 32-bit
	   comparison (cheaper than an 80-bit one).  */
	switch (fpa11->fType[Fn]) {
	case typeSingle:
		//printk("single.\n");
		if (float32_is_nan(fpa11->fpreg[Fn].fSingle))
			goto unordered;
		rFn = float32_to_floatx80(fpa11->fpreg[Fn].fSingle);
		break;

	case typeDouble:
		//printk("double.\n");
		if (float64_is_nan(fpa11->fpreg[Fn].fDouble))
			goto unordered;
		rFn = float64_to_floatx80(fpa11->fpreg[Fn].fDouble);
		break;

	case typeExtended:
		//printk("extended.\n");
		if (floatx80_is_nan(fpa11->fpreg[Fn].fExtended))
			goto unordered;
		rFn = fpa11->fpreg[Fn].fExtended;
		break;

	default:
		return 0;
	}

	if (CONSTANT_FM(opcode)) {
		//printk("Fm is a constant: #%d.\n",Fm);
		rFm = getExtendedConstant(Fm);
		if (floatx80_is_nan(rFm))
			goto unordered;
	} else {
		//printk("Fm = r%d which contains a ",Fm);
		switch (fpa11->fType[Fm]) {
		case typeSingle:
			//printk("single.\n");
			if (float32_is_nan(fpa11->fpreg[Fm].fSingle))
				goto unordered;
			rFm = float32_to_floatx80(fpa11->fpreg[Fm].fSingle);
			break;

		case typeDouble:
			//printk("double.\n");
			if (float64_is_nan(fpa11->fpreg[Fm].fDouble))
				goto unordered;
			rFm = float64_to_floatx80(fpa11->fpreg[Fm].fDouble);
			break;

		case typeExtended:
			//printk("extended.\n");
			if (floatx80_is_nan(fpa11->fpreg[Fm].fExtended))
				goto unordered;
			rFm = fpa11->fpreg[Fm].fExtended;
			break;

		default:
			return 0;
		}
	}

	if (n_flag)
		rFm.high ^= 0x8000;

	/* test for less than condition */
	if (floatx80_lt(rFn, rFm))
		flags |= CC_NEGATIVE;

	/* test for equal condition */
	if (floatx80_eq(rFn, rFm))
		flags |= CC_ZERO;

	/* test for greater than or equal condition */
	if (floatx80_lt(rFm, rFn))
		flags |= CC_CARRY;

#else
	if (FUNC0(opcode)) {
		/* Fm is a constant.  Do the comparison in whatever precision
		   Fn happens to be stored in.  */
		if (fpa11->fType[Fn] == typeSingle) {
			float32 rFm = FUNC19(Fm);
			float32 rFn = fpa11->fpreg[Fn].fSingle;

			if (FUNC3(rFn))
				goto unordered;

			if (n_flag)
				rFm ^= 0x80000000;

			/* test for less than condition */
			if (FUNC4(rFn, rFm))
				flags |= CC_NEGATIVE;

			/* test for equal condition */
			if (FUNC2(rFn, rFm))
				flags |= CC_ZERO;

			/* test for greater than or equal condition */
			if (FUNC4(rFm, rFn))
				flags |= CC_CARRY;
		} else {
			float64 rFm = FUNC15(Fm);
			float64 rFn = fpa11->fpreg[Fn].fDouble;

			if (FUNC8(rFn))
				goto unordered;

			if (n_flag)
				rFm ^= 0x8000000000000000ULL;

			/* test for less than condition */
			if (FUNC9(rFn, rFm))
				flags |= CC_NEGATIVE;

			/* test for equal condition */
			if (FUNC7(rFn, rFm))
				flags |= CC_ZERO;

			/* test for greater than or equal condition */
			if (FUNC9(rFm, rFn))
				flags |= CC_CARRY;
		}
	} else {
		/* Both operands are in registers.  */
		if (fpa11->fType[Fn] == typeSingle
		    && fpa11->fType[Fm] == typeSingle) {
			float32 rFm = fpa11->fpreg[Fm].fSingle;
			float32 rFn = fpa11->fpreg[Fn].fSingle;

			if (FUNC3(rFn)
			    || FUNC3(rFm))
				goto unordered;

			if (n_flag)
				rFm ^= 0x80000000;

			/* test for less than condition */
			if (FUNC4(rFn, rFm))
				flags |= CC_NEGATIVE;

			/* test for equal condition */
			if (FUNC2(rFn, rFm))
				flags |= CC_ZERO;

			/* test for greater than or equal condition */
			if (FUNC4(rFm, rFn))
				flags |= CC_CARRY;
		} else {
			/* Promote 32-bit operand to 64 bits.  */
			float64 rFm, rFn;

			rFm = (fpa11->fType[Fm] == typeSingle) ?
			    FUNC5(fpa11->fpreg[Fm].fSingle)
			    : fpa11->fpreg[Fm].fDouble;

			rFn = (fpa11->fType[Fn] == typeSingle) ?
			    FUNC5(fpa11->fpreg[Fn].fSingle)
			    : fpa11->fpreg[Fn].fDouble;

			if (FUNC8(rFn)
			    || FUNC8(rFm))
				goto unordered;

			if (n_flag)
				rFm ^= 0x8000000000000000ULL;

			/* test for less than condition */
			if (FUNC9(rFn, rFm))
				flags |= CC_NEGATIVE;

			/* test for equal condition */
			if (FUNC7(rFn, rFm))
				flags |= CC_ZERO;

			/* test for greater than or equal condition */
			if (FUNC9(rFm, rFn))
				flags |= CC_CARRY;
		}
	}

#endif

	FUNC21(flags);

	return 1;

      unordered:
	/* ?? The FPA data sheet is pretty vague about this, in particular
	   about whether the non-E comparisons can ever raise exceptions.
	   This implementation is based on a combination of what it says in
	   the data sheet, observation of how the Acorn emulator actually
	   behaves (and how programs expect it to) and guesswork.  */
	flags |= CC_OVERFLOW;
	flags &= ~(CC_ZERO | CC_NEGATIVE);

	if (BIT_AC & FUNC20())
		flags |= CC_CARRY;

	if (e_flag)
		FUNC11(float_flag_invalid);

	FUNC21(flags);
	return 1;
}