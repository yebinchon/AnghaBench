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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy_lcnphy {int lcnphy_current_index; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int,int) ; 
 int FUNC1 (struct brcms_phy*,int) ; 
 int FUNC2 (struct brcms_phy*) ; 
 int FUNC3 (struct brcms_phy*) ; 
 scalar_t__ FUNC4 (struct brcms_phy*) ; 

void FUNC5(struct brcms_phy_pub *ppi)
{
	s8 index;
	u16 index2;
	struct brcms_phy *pi = (struct brcms_phy *) ppi;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;
	u16 SAVE_txpwrctrl = FUNC2(pi);
	if (FUNC4(pi) &&
	    SAVE_txpwrctrl) {
		index = FUNC3(pi);
		index2 = (u16) (index * 2);
		FUNC0(pi, 0x4a9, (0x1ff << 0), (index2) << 0);

		pi_lcn->lcnphy_current_index =
			(s8)((FUNC1(pi, 0x4a9) & 0xFF) / 2);
	}
}