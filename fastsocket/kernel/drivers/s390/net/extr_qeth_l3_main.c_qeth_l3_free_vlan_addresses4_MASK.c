#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ a4; } ;
struct qeth_ipaddr {int /*<<< orphan*/  type; TYPE_2__ u; } ;
struct qeth_card {int /*<<< orphan*/  vlangrp; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_mask; int /*<<< orphan*/  ifa_address; struct in_ifaddr* ifa_next; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_IP_TYPE_NORMAL ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 struct in_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC7(struct qeth_card *card,
			unsigned short vid)
{
	struct in_device *in_dev;
	struct in_ifaddr *ifa;
	struct qeth_ipaddr *addr;

	FUNC0(TRACE, 4, "frvaddr4");

	in_dev = FUNC1(FUNC6(card->vlangrp, vid));
	if (!in_dev)
		return;
	for (ifa = in_dev->ifa_list; ifa; ifa = ifa->ifa_next) {
		addr = FUNC5(QETH_PROT_IPV4);
		if (addr) {
			addr->u.a4.addr = ifa->ifa_address;
			addr->u.a4.mask = ifa->ifa_mask;
			addr->type = QETH_IP_TYPE_NORMAL;
			if (!FUNC4(card, addr))
				FUNC3(addr);
		}
	}
	FUNC2(in_dev);
}