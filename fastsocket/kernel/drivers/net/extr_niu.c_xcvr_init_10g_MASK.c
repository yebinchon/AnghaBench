#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct niu {size_t port; TYPE_2__* parent; } ;
struct TYPE_3__ {int** phy_id; } ;
struct TYPE_4__ {TYPE_1__ phy_probe_info; int /*<<< orphan*/  port_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIF_CONFIG ; 
 int /*<<< orphan*/  MIF_CONFIG_INDIRECT_MODE ; 
 int NIU_PHY_ID_MASK ; 
#define  NIU_PHY_ID_MRVL88X2011 128 
 int /*<<< orphan*/  XMAC_CONFIG ; 
 int /*<<< orphan*/  XMAC_CONFIG_FORCE_LED_ON ; 
 int /*<<< orphan*/  XMAC_CONFIG_LED_POLARITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (struct niu*) ; 
 int FUNC6 (struct niu*) ; 

__attribute__((used)) static int FUNC7(struct niu *np)
{
	int phy_id, err;
	u64 val;

	val = FUNC1(XMAC_CONFIG);
	val &= ~XMAC_CONFIG_LED_POLARITY;
	val |= XMAC_CONFIG_FORCE_LED_ON;
	FUNC3(XMAC_CONFIG, val);

	/* XXX shared resource, lock parent XXX */
	val = FUNC0(MIF_CONFIG);
	val |= MIF_CONFIG_INDIRECT_MODE;
	FUNC2(MIF_CONFIG, val);

	phy_id = FUNC4(np->parent->port_phy, np->port);
	phy_id = np->parent->phy_probe_info.phy_id[phy_id][np->port];

	/* handle different phy types */
	switch (phy_id & NIU_PHY_ID_MASK) {
	case NIU_PHY_ID_MRVL88X2011:
		err = FUNC6(np);
		break;

	default: /* bcom 8704 */
		err = FUNC5(np);
		break;
	}

	return 0;
}