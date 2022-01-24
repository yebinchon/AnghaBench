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
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; } ;
struct cmac {int dummy; } ;
struct port_info {int /*<<< orphan*/  link_config; int /*<<< orphan*/  phy; TYPE_1__ iscsic; struct cmac mac; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAN_MAC_IDX ; 
 int MAC_DIRECTION_RX ; 
 int MAC_DIRECTION_TX ; 
 int /*<<< orphan*/  MAX_MAC_IDX ; 
 int /*<<< orphan*/  SAN_MAC_IDX ; 
 struct port_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cmac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cmac*,struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct port_info *pi = FUNC0(dev);
	struct cmac *mac = &pi->mac;

	FUNC3(mac);
	FUNC6(mac, MAX_MAC_IDX);
	FUNC5(mac, dev->mtu);
	FUNC4(mac, LAN_MAC_IDX, dev->dev_addr);
	FUNC4(mac, SAN_MAC_IDX, pi->iscsic.mac_addr);
	FUNC7(mac, dev);
	FUNC1(&pi->phy, mac, &pi->link_config);
	FUNC2(mac, MAC_DIRECTION_RX | MAC_DIRECTION_TX);
}