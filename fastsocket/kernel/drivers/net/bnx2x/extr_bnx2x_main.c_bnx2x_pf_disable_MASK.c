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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFC_REG_WEAK_ENABLE_PF ; 
 int /*<<< orphan*/  IGU_PF_CONF_FUNC_EN ; 
 int /*<<< orphan*/  IGU_REG_PF_CONFIGURATION ; 
 int /*<<< orphan*/  PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct bnx2x *bp)
{
	u32 val = FUNC0(bp, IGU_REG_PF_CONFIGURATION);
	val &= ~IGU_PF_CONF_FUNC_EN;

	FUNC1(bp, IGU_REG_PF_CONFIGURATION, val);
	FUNC1(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 0);
	FUNC1(bp, CFC_REG_WEAK_ENABLE_PF, 0);
}