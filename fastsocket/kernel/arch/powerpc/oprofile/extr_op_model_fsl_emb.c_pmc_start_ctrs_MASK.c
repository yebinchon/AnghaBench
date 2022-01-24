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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  PMGC0_FAC ; 
 int /*<<< orphan*/  PMGC0_FCECE ; 
 int /*<<< orphan*/  PMGC0_PMIE ; 
 int /*<<< orphan*/  PMRN_PMGC0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int enable)
{
	u32 pmgc0 = FUNC0(PMRN_PMGC0);

	pmgc0 &= ~PMGC0_FAC;
	pmgc0 |= PMGC0_FCECE;

	if (enable)
		pmgc0 |= PMGC0_PMIE;
	else
		pmgc0 &= ~PMGC0_PMIE;

	FUNC1(PMRN_PMGC0, pmgc0);
}