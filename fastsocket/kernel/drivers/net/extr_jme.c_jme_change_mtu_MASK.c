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
struct net_device {int features; int mtu; } ;
struct jme_adapter {int old_mtu; int /*<<< orphan*/  flags; int /*<<< orphan*/  reg_rxcs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ETH_HLEN ; 
 int IPV6_MIN_MTU ; 
 int /*<<< orphan*/  JME_FLAG_TSO ; 
 int /*<<< orphan*/  JME_FLAG_TXCSUM ; 
 scalar_t__ MAX_ETHERNET_JUMBO_PACKET_SIZE ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int /*<<< orphan*/  RXCS_FIFOTHNP ; 
 int /*<<< orphan*/  RXCS_FIFOTHNP_128QW ; 
 int /*<<< orphan*/  RXCS_FIFOTHNP_64QW ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 struct jme_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev, int new_mtu)
{
	struct jme_adapter *jme = FUNC2(netdev);

	if (new_mtu == jme->old_mtu)
		return 0;

	if (((new_mtu + ETH_HLEN) > MAX_ETHERNET_JUMBO_PACKET_SIZE) ||
		((new_mtu) < IPV6_MIN_MTU))
		return -EINVAL;

	if (new_mtu > 4000) {
		jme->reg_rxcs &= ~RXCS_FIFOTHNP;
		jme->reg_rxcs |= RXCS_FIFOTHNP_64QW;
		FUNC1(jme);
	} else {
		jme->reg_rxcs &= ~RXCS_FIFOTHNP;
		jme->reg_rxcs |= RXCS_FIFOTHNP_128QW;
		FUNC1(jme);
	}

	if (new_mtu > 1900) {
		netdev->features &= ~(NETIF_F_HW_CSUM |
				NETIF_F_TSO |
				NETIF_F_TSO6);
	} else {
		if (FUNC3(JME_FLAG_TXCSUM, &jme->flags))
			netdev->features |= NETIF_F_HW_CSUM;
		if (FUNC3(JME_FLAG_TSO, &jme->flags))
			netdev->features |= NETIF_F_TSO | NETIF_F_TSO6;
	}

	netdev->mtu = new_mtu;
	FUNC0(jme);

	return 0;
}