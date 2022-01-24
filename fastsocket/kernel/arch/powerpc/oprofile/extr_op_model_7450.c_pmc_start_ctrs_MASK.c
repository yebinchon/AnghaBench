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
typedef  int u32 ;

/* Variables and functions */
 int MMCR0_FC ; 
 int MMCR0_FCECE ; 
 int MMCR0_FCM0 ; 
 int MMCR0_PMC1CE ; 
 int MMCR0_PMCnCE ; 
 int MMCR0_PMXE ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	u32 mmcr0 = FUNC0(SPRN_MMCR0);

	mmcr0 &= ~(MMCR0_FC | MMCR0_FCM0);
	mmcr0 |= (MMCR0_FCECE | MMCR0_PMC1CE | MMCR0_PMCnCE | MMCR0_PMXE);

	FUNC1(SPRN_MMCR0, mmcr0);
}