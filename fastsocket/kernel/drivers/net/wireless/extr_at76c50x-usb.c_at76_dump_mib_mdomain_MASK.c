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
struct mib_mdomain {int /*<<< orphan*/  tx_powerlevel; int /*<<< orphan*/  channel_list; } ;
struct at76_priv {TYPE_1__* hw; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MIB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIB_MDOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mib_mdomain*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mib_mdomain*) ; 
 struct mib_mdomain* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct at76_priv *priv)
{
	int ret;
	struct mib_mdomain *m = FUNC4(sizeof(struct mib_mdomain), GFP_KERNEL);

	if (!m)
		return;

	ret = FUNC1(priv->udev, MIB_MDOMAIN, m,
			   sizeof(struct mib_mdomain));
	if (ret < 0) {
		FUNC5(priv->hw->wiphy,
			  "at76_get_mib (MDOMAIN) failed: %d\n", ret);
		goto exit;
	}

	FUNC0(DBG_MIB, "%s: MIB MDOMAIN: channel_list %s",
		 FUNC6(priv->hw->wiphy),
		 FUNC2(m->channel_list, sizeof(m->channel_list)));

	FUNC0(DBG_MIB, "%s: MIB MDOMAIN: tx_powerlevel %s",
		 FUNC6(priv->hw->wiphy),
		 FUNC2(m->tx_powerlevel, sizeof(m->tx_powerlevel)));
exit:
	FUNC3(m);
}