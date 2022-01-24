#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  regulatory_domain; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  regulatory_domain; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  regulatory_domain; int /*<<< orphan*/  mac_addr; } ;
union at76_hwcfg {TYPE_3__ r5; TYPE_2__ r3; TYPE_1__ i; } ;
struct at76_priv {TYPE_4__* hw; int /*<<< orphan*/  regulatory_domain; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  udev; int /*<<< orphan*/  board_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,union at76_hwcfg*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,union at76_hwcfg*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union at76_hwcfg*) ; 
 union at76_hwcfg* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC8(struct at76_priv *priv)
{
	int ret;
	union at76_hwcfg *hwcfg = FUNC5(sizeof(*hwcfg), GFP_KERNEL);

	if (!hwcfg)
		return -ENOMEM;

	if (FUNC3(priv->board_type)) {
		ret = FUNC1(priv->udev, hwcfg,
					       sizeof(hwcfg->i));
		if (ret < 0)
			goto exit;
		FUNC6(priv->mac_addr, hwcfg->i.mac_addr, ETH_ALEN);
		priv->regulatory_domain = hwcfg->i.regulatory_domain;
	} else if (FUNC2(priv->board_type)) {
		ret = FUNC0(priv->udev, hwcfg, sizeof(hwcfg->r3));
		if (ret < 0)
			goto exit;
		FUNC6(priv->mac_addr, hwcfg->r3.mac_addr, ETH_ALEN);
		priv->regulatory_domain = hwcfg->r3.regulatory_domain;
	} else {
		ret = FUNC0(priv->udev, hwcfg, sizeof(hwcfg->r5));
		if (ret < 0)
			goto exit;
		FUNC6(priv->mac_addr, hwcfg->r5.mac_addr, ETH_ALEN);
		priv->regulatory_domain = hwcfg->r5.regulatory_domain;
	}

exit:
	FUNC4(hwcfg);
	if (ret < 0)
		FUNC7(priv->hw->wiphy, "cannot get HW Config (error %d)\n",
			  ret);

	return ret;
}