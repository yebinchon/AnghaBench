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
struct bnx2x {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAE_REG_BACKWARD_COMP_EN ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_SRIOV ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct bnx2x *bp)
{
	if (FUNC1(bp->pdev, PCI_EXT_CAP_ID_SRIOV))
		FUNC0(bp, DMAE_REG_BACKWARD_COMP_EN, 0);
}