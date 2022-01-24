#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct brcms_phy*,int) ; 

bool FUNC2(struct brcms_phy_pub *pih)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;
	u32 phybist0, phybist1, phybist2, phybist3, phybist4;

	if (FUNC0(pi->pubpi.phy_rev, 16))
		return true;

	phybist0 = FUNC1(pi, 0x0e);
	phybist1 = FUNC1(pi, 0x0f);
	phybist2 = FUNC1(pi, 0xea);
	phybist3 = FUNC1(pi, 0xeb);
	phybist4 = FUNC1(pi, 0x156);

	if ((phybist0 == 0) && (phybist1 == 0x4000) && (phybist2 == 0x1fe0) &&
	    (phybist3 == 0) && (phybist4 == 0))
		return true;

	return false;
}