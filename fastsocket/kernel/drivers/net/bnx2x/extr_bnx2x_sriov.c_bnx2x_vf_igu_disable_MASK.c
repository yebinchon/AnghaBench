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
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IGU_REG_VF_CONFIGURATION ; 
 int IGU_VF_CONF_FUNC_EN ; 
 int IGU_VF_CONF_MSI_MSIX_EN ; 
 int IGU_VF_CONF_PARENT_MASK ; 
 int IGU_VF_CONF_SINGLE_ISR_EN ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
	u32 val;

	/* clear the VF configuration - pretend */
	FUNC4(bp, FUNC1(bp, vf->abs_vfid));
	val = FUNC2(bp, IGU_REG_VF_CONFIGURATION);
	val &= ~(IGU_VF_CONF_MSI_MSIX_EN | IGU_VF_CONF_SINGLE_ISR_EN |
		 IGU_VF_CONF_FUNC_EN | IGU_VF_CONF_PARENT_MASK);
	FUNC3(bp, IGU_REG_VF_CONFIGURATION, val);
	FUNC4(bp, FUNC0(bp));
}