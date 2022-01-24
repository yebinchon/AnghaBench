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
struct spu_state {int dummy; } ;
struct spu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC1 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC4 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC5 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC6 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC7 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC8 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC9 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC10 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC11 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC12 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC13 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC14 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC15 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC16 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC17 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC18 (struct spu*) ; 
 int /*<<< orphan*/  FUNC19 (struct spu*) ; 
 int /*<<< orphan*/  FUNC20 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC21 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC22 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC23 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC24 (struct spu_state*,struct spu*) ; 

__attribute__((used)) static void FUNC25(struct spu_state *prev, struct spu *spu)
{
	/*
	 * Perform steps 2-25 of SPU context restore sequence,
	 * which resets an SPU either after a failed save, or
	 * when using SPU for first time.
	 */

	FUNC1(prev, spu);	        /* Step 2.  */
	FUNC5(prev, spu);	        /* Step 3.  */
	FUNC22(prev, spu);	        /* Step 4.  */
	FUNC16(prev, spu);	        /* Step 5.  */
	FUNC19(spu);			/* NEW.     */
	FUNC8(prev, spu);	/* Step 6.  */
	FUNC20(prev, spu);	/* Step 7.  */
	FUNC24(prev, spu);	/* Step 8.  */
	if (!FUNC21(prev, spu))	        /* Step 9.  */
		FUNC0(prev, spu);	/* Step 10. */
	FUNC2(prev, spu);	        /* Step 11. */
	FUNC6(prev, spu);	        /* Step 12. */
	FUNC4(prev, spu);	/* Step 13. */
	FUNC7(prev, spu);	        /* Step 14. */
	FUNC23(prev, spu);	        /* Step 15. */
	FUNC12(prev, spu);	        /* Step 16. */
	FUNC11(prev, spu);              /* Step 17. */
	FUNC17(prev, spu);	        /* Step 18. */
	FUNC18(spu);		/* Step 19. */
	FUNC9(prev, spu);	        /* Step 20. */
	FUNC10(prev, spu);	        /* Step 21. */
	FUNC3(prev, spu);	        /* Step 22. */
	FUNC15(prev, spu);	        /* Step 23. */
	FUNC14(prev, spu);	        /* Step 24. */
	FUNC13(prev, spu);	        /* Step 25. */
}