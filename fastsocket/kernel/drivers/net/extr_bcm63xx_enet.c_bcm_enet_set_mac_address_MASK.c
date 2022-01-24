#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int* dev_addr; } ;
struct bcm_enet_priv {int dummy; } ;

/* Variables and functions */
 int ENET_PMH_DATAVALID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_enet_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *p)
{
	struct bcm_enet_priv *priv;
	struct sockaddr *addr = p;
	u32 val;

	priv = FUNC4(dev);
	FUNC3(dev->dev_addr, addr->sa_data, ETH_ALEN);

	/* use perfect match register 0 to store my mac address */
	val = (dev->dev_addr[2] << 24) | (dev->dev_addr[3] << 16) |
		(dev->dev_addr[4] << 8) | dev->dev_addr[5];
	FUNC2(priv, val, FUNC1(0));

	val = (dev->dev_addr[0] << 8 | dev->dev_addr[1]);
	val |= ENET_PMH_DATAVALID_MASK;
	FUNC2(priv, val, FUNC0(0));

	return 0;
}