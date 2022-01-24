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
typedef  int /*<<< orphan*/  s8 ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LCN_VBAT_SCALE_DEN ; 
 int LCN_VBAT_SCALE_NOM ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  VBATSENSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int FUNC2 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ) ; 

s8 FUNC6(struct brcms_phy *pi, bool mode)
{
	u16 vbatsenseval;
	s32 avg = 0;
	bool suspend = false;

	if (mode == 1) {
		suspend = (0 == (FUNC1(pi->d11core,
					     FUNC0(maccontrol)) &
				 MCTL_EN_MAC));
		if (!suspend)
			FUNC4(pi->sh->physhim);
		FUNC5(pi, VBATSENSE);
	}

	vbatsenseval = FUNC2(pi, 0x475) & 0x1FF;

	if (vbatsenseval > 255)
		avg = (s32) (vbatsenseval - 512);
	else
		avg = (s32) vbatsenseval;

	avg =	(avg * LCN_VBAT_SCALE_NOM +
		 (LCN_VBAT_SCALE_DEN >> 1)) / LCN_VBAT_SCALE_DEN;

	if (mode == 1) {
		if (!suspend)
			FUNC3(pi->sh->physhim);
	}
	return (s8) avg;
}