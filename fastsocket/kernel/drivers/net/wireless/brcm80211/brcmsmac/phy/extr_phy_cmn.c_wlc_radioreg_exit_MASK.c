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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; scalar_t__ phy_wreg; int /*<<< orphan*/  d11core; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCTL_LOCK_RADIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phyversion ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct brcms_phy_pub *pih)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;

	(void)FUNC1(pi->d11core, FUNC0(phyversion));
	pi->phy_wreg = 0;
	FUNC2(pi->sh->physhim, MCTL_LOCK_RADIO, 0);
}