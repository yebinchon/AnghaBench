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
typedef  scalar_t__ u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/  d11core; TYPE_1__ pubpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int ON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  phyregaddr ; 
 int /*<<< orphan*/  phyregdata ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy_pub*) ; 

void FUNC7(struct brcms_phy_pub *ppi, bool start_end)
{
	struct brcms_phy *pi = (struct brcms_phy *) ppi;
	u16 rxc;
	rxc = 0;

	if (start_end == ON) {
		if (!FUNC1(pi))
			return;

		if (FUNC2(pi->pubpi.phy_rev, 3)
		    || FUNC2(pi->pubpi.phy_rev, 4)) {
			FUNC4(pi->d11core, FUNC0(phyregaddr),
				      0xa0);
			FUNC3(pi->d11core, FUNC0(phyregdata),
				   0x1 << 15);
		}
	} else {
		if (FUNC2(pi->pubpi.phy_rev, 3)
		    || FUNC2(pi->pubpi.phy_rev, 4)) {
			FUNC4(pi->d11core, FUNC0(phyregaddr),
				      0xa0);
			FUNC5(pi->d11core, FUNC0(phyregdata), rxc);
		}

		FUNC6(ppi);
	}
}