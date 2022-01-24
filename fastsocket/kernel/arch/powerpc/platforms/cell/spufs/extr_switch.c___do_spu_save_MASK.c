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
 int FUNC0 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC1 (struct spu_state*,struct spu*) ; 
 int FUNC2 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC4 (struct spu_state*,struct spu*) ; 

__attribute__((used)) static int FUNC5(struct spu_state *prev, struct spu *spu)
{
	int rc;

	/*
	 * SPU context save can be broken into three phases:
	 *
	 *     (a) quiesce [steps 2-16].
	 *     (b) save of CSA, performed by PPE [steps 17-42]
	 *     (c) save of LSCSA, mostly performed by SPU [steps 43-52].
	 *
	 * Returns      0 on success.
	 *              2,6 if failed to quiece SPU
	 *              53 if SPU-side of save failed.
	 */

	rc = FUNC2(prev, spu);	        /* Steps 2-16. */
	switch (rc) {
	default:
	case 2:
	case 6:
		FUNC1(prev, spu);
		return rc;
		break;
	case 0:
		break;
	}
	FUNC3(prev, spu);	                /* Steps 17-43. */
	FUNC4(prev, spu);	                /* Steps 44-53. */
	return FUNC0(prev, spu);	/* Step 54.     */
}