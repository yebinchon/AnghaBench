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
struct cphy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E1XXX_EXT_PHY_SPECIFIC_CNTRL_REGISTER ; 
 int M_DOWNSHIFT_CNT ; 
 int FUNC0 (int) ; 
 int V_DOWNSHIFT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cphy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct cphy *cphy, int downshift_enable)
{
	u32 val;

	(void) FUNC1(cphy,
		MV88E1XXX_EXT_PHY_SPECIFIC_CNTRL_REGISTER, &val);

	/*
	 * Set the downshift counter to 2 so we try to establish Gb link
	 * twice before downshifting.
	 */
	val &= ~(V_DOWNSHIFT_ENABLE | FUNC0(M_DOWNSHIFT_CNT));

	if (downshift_enable)
		val |= V_DOWNSHIFT_ENABLE | FUNC0(2);
	(void) FUNC2(cphy,
			MV88E1XXX_EXT_PHY_SPECIFIC_CNTRL_REGISTER, val);
	return 0;
}