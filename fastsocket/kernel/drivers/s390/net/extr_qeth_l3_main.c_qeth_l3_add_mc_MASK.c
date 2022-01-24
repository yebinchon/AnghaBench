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
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ a4; } ;
struct qeth_ipaddr {int is_multicast; int /*<<< orphan*/  mac; TYPE_2__ u; } ;
struct qeth_card {int dummy; } ;
struct ip_mc_list {int /*<<< orphan*/  multiaddr; struct ip_mc_list* next; } ;
struct in_device {int /*<<< orphan*/  dev; struct ip_mc_list* mc_list; } ;

/* Variables and functions */
 int MAX_ADDR_LEN ; 
 int /*<<< orphan*/  OSA_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct qeth_card *card, struct in_device *in4_dev)
{
	struct qeth_ipaddr *ipm;
	struct ip_mc_list *im4;
	char buf[MAX_ADDR_LEN];

	FUNC0(TRACE, 4, "addmc");
	for (im4 = in4_dev->mc_list; im4; im4 = im4->next) {
		FUNC5(im4->multiaddr, buf, in4_dev->dev);
		ipm = FUNC4(QETH_PROT_IPV4);
		if (!ipm)
			continue;
		ipm->u.a4.addr = im4->multiaddr;
		FUNC2(ipm->mac, buf, OSA_ADDR_LEN);
		ipm->is_multicast = 1;
		if (!FUNC3(card, ipm))
			FUNC1(ipm);
	}
}