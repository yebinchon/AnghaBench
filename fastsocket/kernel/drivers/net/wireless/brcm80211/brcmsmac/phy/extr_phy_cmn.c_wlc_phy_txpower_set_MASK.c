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
typedef  int uint ;
typedef  scalar_t__ u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int txpwroverride; TYPE_1__* sh; int /*<<< orphan*/  d11core; scalar_t__* tx_user_target; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; scalar_t__ up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*) ; 
 int TXP_NUM_RATES ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 

int FUNC7(struct brcms_phy_pub *ppi, uint qdbm, bool override)
{
	struct brcms_phy *pi = (struct brcms_phy *) ppi;
	int i;

	if (qdbm > 127)
		return -EINVAL;

	for (i = 0; i < TXP_NUM_RATES; i++)
		pi->tx_user_target[i] = (u8) qdbm;

	pi->txpwroverride = false;

	if (pi->sh->up) {
		if (!FUNC1(pi)) {
			bool suspend;

			suspend = (0 == (FUNC2(pi->d11core,
						     FUNC0(maccontrol)) &
					 MCTL_EN_MAC));

			if (!suspend)
				FUNC4(pi->sh->physhim);

			FUNC6(pi);
			FUNC5(pi);

			if (!suspend)
				FUNC3(pi->sh->physhim);
		}
	}
	return 0;
}