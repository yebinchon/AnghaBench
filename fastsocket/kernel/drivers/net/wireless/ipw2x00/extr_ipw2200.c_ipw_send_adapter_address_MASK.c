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
typedef  int /*<<< orphan*/  u8 ;
struct ipw_priv {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IPW_CMD_ADAPTER_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ipw_priv *priv, u8 * mac)
{
	if (!priv || !mac) {
		FUNC1("Invalid args\n");
		return -1;
	}

	FUNC0("%s: Setting MAC to %pM\n",
		       priv->net_dev->name, mac);

	return FUNC2(priv, IPW_CMD_ADAPTER_ADDRESS, ETH_ALEN, mac);
}