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
 int /*<<< orphan*/  FUNC2 (struct spu_state*,struct spu*) ; 

__attribute__((used)) static int FUNC3(struct spu_state *next, struct spu *spu)
{
	int rc;

	/*
	 * SPU context restore can be broken into three phases:
	 *
	 *    (a) harvest (or reset) SPU [steps 2-24].
	 *    (b) restore LSCSA [steps 25-40], mostly performed by SPU.
	 *    (c) restore CSA [steps 41-76], performed by PPE.
	 *
	 * The 'harvest' step is not performed here, but rather
	 * as needed below.
	 */

	FUNC2(next, spu);	        /* Steps 24-39. */
	rc = FUNC0(next, spu);	/* Step 40.     */
	switch (rc) {
	default:
		/* Failed. Return now. */
		return rc;
		break;
	case 0:
		/* Fall through to next step. */
		break;
	}
	FUNC1(next, spu);

	return 0;
}