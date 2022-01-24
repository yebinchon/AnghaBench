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
union cm_control {int alg_done_int_en; int alg_go; int /*<<< orphan*/  cm_control_reg; } ;
struct algoblock {int /*<<< orphan*/  algoStepCount; int /*<<< orphan*/  intrVector; int /*<<< orphan*/  intrHostDest; int /*<<< orphan*/  amoModType; int /*<<< orphan*/  amoHostDest; } ;
struct mbcs_soft {int /*<<< orphan*/  algolock; int /*<<< orphan*/  algo_done; void* mmr_base; struct algoblock algo; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  MBCS_CM_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC6(struct mbcs_soft *soft)
{
	struct algoblock *algo_soft = &soft->algo;
	void *mmr_base = soft->mmr_base;
	union cm_control cm_control;

	if (FUNC4(&soft->algolock))
		return -ERESTARTSYS;

	FUNC2(&soft->algo_done, 0);

	FUNC3(mmr_base,
		 algo_soft->amoHostDest,
		 algo_soft->amoModType,
		 algo_soft->intrHostDest,
		 algo_soft->intrVector, algo_soft->algoStepCount);

	/* start algorithm */
	cm_control.cm_control_reg = FUNC0(mmr_base, MBCS_CM_CONTROL);
	cm_control.alg_done_int_en = 1;
	cm_control.alg_go = 1;
	FUNC1(mmr_base, MBCS_CM_CONTROL, cm_control.cm_control_reg);

	FUNC5(&soft->algolock);

	return 0;
}