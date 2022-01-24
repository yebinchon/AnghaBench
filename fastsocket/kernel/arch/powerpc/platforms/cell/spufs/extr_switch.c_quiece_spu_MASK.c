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
 scalar_t__ FUNC0 (struct spu_state*,struct spu*) ; 
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

__attribute__((used)) static int FUNC16(struct spu_state *prev, struct spu *spu)
{
	/*
	 * Combined steps 2-18 of SPU context save sequence, which
	 * quiesce the SPU state (disable SPU execution, MFC command
	 * queues, decrementer, SPU interrupts, etc.).
	 *
	 * Returns      0 on success.
	 *              2 if failed step 2.
	 *              6 if failed step 6.
	 */

	if (FUNC0(prev, spu)) {	/* Step 2. */
		return 2;
	}
	FUNC1(prev, spu);	        /* Step 3. */
	FUNC15(prev, spu);	        /* Step 4. */
	FUNC5(prev, spu);	        /* Step 5. */
	if (FUNC0(prev, spu)) {	/* Step 6. */
		return 6;
	}
	FUNC14(prev, spu);	        /* Step 7. */
	FUNC8(prev, spu);		/* Step 8. */
	FUNC11(prev, spu);	        /* Step 9. */
	FUNC9(prev, spu);	        /* Step 10. */
	FUNC12(prev, spu);	        /* Step 11. */
	FUNC10(prev, spu);     /* Step 12. */
	FUNC3(prev, spu);	        /* Step 13. */
	FUNC13(prev, spu);		/* Step 14. */
	FUNC7(prev, spu);	/* Step 15. */
	FUNC2(prev, spu);	        /* Step 16. */
	FUNC6(prev, spu);	        /* Step 17. */
	FUNC4(prev, spu);	/* Step 18. */

	return 0;
}