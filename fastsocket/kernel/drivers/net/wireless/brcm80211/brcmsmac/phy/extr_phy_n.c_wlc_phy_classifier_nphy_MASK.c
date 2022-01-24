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
typedef  int u16 ;
struct brcms_phy {TYPE_1__* sh; int /*<<< orphan*/  d11core; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; int /*<<< orphan*/  corerev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int MCTL_EN_MAC ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int) ; 
 int FUNC4 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

u16 FUNC7(struct brcms_phy *pi, u16 mask, u16 val)
{
	u16 curr_ctl, new_ctl;
	bool suspended = false;

	if (FUNC1(pi->sh->corerev, 16)) {
		suspended = (FUNC2(pi->d11core, FUNC0(maccontrol)) &
			     MCTL_EN_MAC) ? false : true;
		if (!suspended)
			FUNC6(pi->sh->physhim);
	}

	curr_ctl = FUNC4(pi, 0xb0) & (0x7 << 0);

	new_ctl = (curr_ctl & (~mask)) | (val & mask);

	FUNC3(pi, 0xb0, (0x7 << 0), new_ctl);

	if (FUNC1(pi->sh->corerev, 16) && !suspended)
		FUNC5(pi->sh->physhim);

	return new_ctl;
}