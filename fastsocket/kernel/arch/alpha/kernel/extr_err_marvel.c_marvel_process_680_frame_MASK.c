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
struct ev7_lf_subpackets {scalar_t__* env; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_TYPE__PAL__ENV__AMBIENT_TEMPERATURE ; 
 int /*<<< orphan*/  EL_TYPE__PAL__ENV__HOT_PLUG ; 
 int MCHK_DISPOSITION_REPORT ; 
 int MCHK_DISPOSITION_UNKNOWN_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ev7_lf_subpackets*) ; 

__attribute__((used)) static int
FUNC2(struct ev7_lf_subpackets *lf_subpackets, int print)
{
	int status = MCHK_DISPOSITION_UNKNOWN_ERROR;
	int i;

	for (i = FUNC0(EL_TYPE__PAL__ENV__AMBIENT_TEMPERATURE);
	     i <= FUNC0(EL_TYPE__PAL__ENV__HOT_PLUG);
	     i++) {
		if (lf_subpackets->env[i])
			status = MCHK_DISPOSITION_REPORT;
	}

	if (print)
		FUNC1(lf_subpackets);

	return status;
}