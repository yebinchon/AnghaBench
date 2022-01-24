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
struct mib_mac_addr {int mac_addr; int /*<<< orphan*/ * group_addr_status; int /*<<< orphan*/ * group_addr; int /*<<< orphan*/ * res; } ;
struct at76_priv {TYPE_1__* hw; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DBG_MIB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIB_MAC_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mib_mac_addr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mib_mac_addr*) ; 
 struct mib_mac_addr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct at76_priv *priv)
{
	int i;
	int ret;
	struct mib_mac_addr *m = FUNC4(sizeof(struct mib_mac_addr),
					 GFP_KERNEL);

	if (!m)
		return;

	ret = FUNC2(priv->udev, MIB_MAC_ADDR, m,
			   sizeof(struct mib_mac_addr));
	if (ret < 0) {
		FUNC5(priv->hw->wiphy,
			  "at76_get_mib (MAC_ADDR) failed: %d\n", ret);
		goto exit;
	}

	FUNC1(DBG_MIB, "%s: MIB MAC_ADDR: mac_addr %pM res 0x%x 0x%x",
		 FUNC6(priv->hw->wiphy),
		 m->mac_addr, m->res[0], m->res[1]);
	for (i = 0; i < FUNC0(m->group_addr); i++)
		FUNC1(DBG_MIB, "%s: MIB MAC_ADDR: group addr %d: %pM, "
			 "status %d", FUNC6(priv->hw->wiphy), i,
			 m->group_addr[i], m->group_addr_status[i]);
exit:
	FUNC3(m);
}