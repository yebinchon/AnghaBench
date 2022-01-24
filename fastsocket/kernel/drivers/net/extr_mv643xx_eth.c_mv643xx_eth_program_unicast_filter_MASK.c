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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct mv643xx_eth_private {int /*<<< orphan*/  port_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_CONFIG ; 
 int UNICAST_PROMISCUOUS_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct mv643xx_eth_private* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mv643xx_eth_private*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct mv643xx_eth_private *mp = FUNC1(dev);
	u32 port_config;
	u32 nibbles;
	int i;

	FUNC4(mp, dev->dev_addr);

	port_config = FUNC2(mp, PORT_CONFIG) & ~UNICAST_PROMISCUOUS_MODE;

	nibbles = FUNC3(dev);
	if (!nibbles) {
		port_config |= UNICAST_PROMISCUOUS_MODE;
		nibbles = 0xffff;
	}

	for (i = 0; i < 16; i += 4) {
		int off = FUNC0(mp->port_num) + i;
		u32 v;

		v = 0;
		if (nibbles & 1)
			v |= 0x00000001;
		if (nibbles & 2)
			v |= 0x00000100;
		if (nibbles & 4)
			v |= 0x00010000;
		if (nibbles & 8)
			v |= 0x01000000;
		nibbles >>= 4;

		FUNC5(mp, off, v);
	}

	FUNC6(mp, PORT_CONFIG, port_config);
}