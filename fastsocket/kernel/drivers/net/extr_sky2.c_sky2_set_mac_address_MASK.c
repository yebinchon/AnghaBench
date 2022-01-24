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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct sky2_port {unsigned int port; struct sky2_hw* hw; } ;
struct sky2_hw {scalar_t__ regs; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ B2_MAC_1 ; 
 scalar_t__ B2_MAC_2 ; 
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GM_SRC_ADDR_1L ; 
 int /*<<< orphan*/  GM_SRC_ADDR_2L ; 
 int /*<<< orphan*/  FUNC0 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sky2_port* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *p)
{
	struct sky2_port *sky2 = FUNC4(dev);
	struct sky2_hw *hw = sky2->hw;
	unsigned port = sky2->port;
	const struct sockaddr *addr = p;

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(dev->dev_addr, addr->sa_data, ETH_ALEN);
	FUNC3(hw->regs + B2_MAC_1 + port * 8,
		    dev->dev_addr, ETH_ALEN);
	FUNC3(hw->regs + B2_MAC_2 + port * 8,
		    dev->dev_addr, ETH_ALEN);

	/* virtual address for data */
	FUNC0(hw, port, GM_SRC_ADDR_2L, dev->dev_addr);

	/* physical address: used for pause frames */
	FUNC0(hw, port, GM_SRC_ADDR_1L, dev->dev_addr);

	return 0;
}