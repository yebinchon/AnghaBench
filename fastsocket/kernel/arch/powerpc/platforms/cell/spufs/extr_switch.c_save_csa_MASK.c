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
 int /*<<< orphan*/  FUNC18 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC19 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC20 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC21 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC22 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC23 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC24 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC25 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC26 (struct spu_state*,struct spu*) ; 

__attribute__((used)) static void FUNC27(struct spu_state *prev, struct spu *spu)
{
	/*
	 * Combine steps 19-44 of SPU context save sequence, which
	 * save regions of the privileged & problem state areas.
	 */

	FUNC9(prev, spu);	/* Step 19. */
	FUNC15(prev, spu);	/* Step 20. */
	FUNC16(prev, spu);	/* Step 21. */
	FUNC17(prev, spu);  /* NEW.     */
	FUNC8(prev, spu);	/* Step 22. */
	FUNC7(prev, spu);	/* Step 23. */
	FUNC6(prev, spu);	/* Step 24. */
	FUNC11(prev, spu);	/* Step 25. */
	FUNC24(prev, spu);	/* Step 26. */
	FUNC5(prev, spu);	/* Step 26a - moved from 44. */
	FUNC0(prev, spu);	/* Step 27. */
	FUNC26(prev, spu);	/* Step 28. */
	FUNC25(prev, spu);	/* Step 30. */
	FUNC22(prev, spu);	/* Step 31. */
	FUNC23(prev, spu);	/* Step 32. */
	FUNC3(prev, spu);	/* Step 33. */
	FUNC20(prev, spu);	/* Step 34. */
	FUNC2(prev, spu);	/* Step 35. */
	FUNC19(prev, spu);	/* Step 36. */
	FUNC12(prev, spu);	/* Step 37. */
	FUNC10(prev, spu);	/* Step 38. */
	FUNC14(prev, spu);	/* Step 39. */
	FUNC13(prev, spu);	        /* Step 40. */
	FUNC18(prev, spu);	/* Step 41. */
	FUNC4(prev, spu);	/* Step 42. */
	FUNC21(prev, spu);	        /* Step 43. */
	FUNC1(prev, spu);	        /* Step 45. */
}