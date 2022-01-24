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
typedef  int u32 ;
struct ipw2100_priv {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EIO ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IPW_ORD_STAT_ADAPTER_MAC ; 
 int FUNC1 (struct ipw2100_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ipw2100_priv *priv)
{
	u32 length = ETH_ALEN;
	u8 addr[ETH_ALEN];

	int err;

	err = FUNC1(priv, IPW_ORD_STAT_ADAPTER_MAC, addr, &length);
	if (err) {
		FUNC0("MAC address read failed\n");
		return -EIO;
	}

	FUNC2(priv->net_dev->dev_addr, addr, ETH_ALEN);
	FUNC0("card MAC is %pM\n", priv->net_dev->dev_addr);

	return 0;
}