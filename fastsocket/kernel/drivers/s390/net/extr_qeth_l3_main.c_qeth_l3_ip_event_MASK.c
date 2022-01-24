#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__ a4; } ;
struct qeth_ipaddr {int /*<<< orphan*/  type; TYPE_3__ u; } ;
struct qeth_card {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_mask; int /*<<< orphan*/  ifa_address; TYPE_1__* ifa_dev; } ;
struct TYPE_4__ {scalar_t__ dev; } ;

/* Variables and functions */
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_IP_TYPE_NORMAL ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/ * FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC5 (int /*<<< orphan*/ ) ; 
 struct qeth_card* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC8(struct notifier_block *this,
			    unsigned long event, void *ptr)
{
	struct in_ifaddr *ifa = (struct in_ifaddr *)ptr;
	struct net_device *dev = (struct net_device *)ifa->ifa_dev->dev;
	struct qeth_ipaddr *addr;
	struct qeth_card *card;

	if (FUNC1(dev) != &init_net)
		return NOTIFY_DONE;

	FUNC0(TRACE, 3, "ipevent");
	card = FUNC6(dev);
	if (!card)
		return NOTIFY_DONE;

	addr = FUNC5(QETH_PROT_IPV4);
	if (addr != NULL) {
		addr->u.a4.addr = ifa->ifa_address;
		addr->u.a4.mask = ifa->ifa_mask;
		addr->type = QETH_IP_TYPE_NORMAL;
	} else
		goto out;

	switch (event) {
	case NETDEV_UP:
		if (!FUNC3(card, addr))
			FUNC2(addr);
		break;
	case NETDEV_DOWN:
		if (!FUNC4(card, addr))
			FUNC2(addr);
		break;
	default:
		break;
	}
	FUNC7(card);
out:
	return NOTIFY_DONE;
}