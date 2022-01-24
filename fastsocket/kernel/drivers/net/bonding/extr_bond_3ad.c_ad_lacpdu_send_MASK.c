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
struct slave {int /*<<< orphan*/  perm_hwaddr; int /*<<< orphan*/  dev; } ;
struct sk_buff {int /*<<< orphan*/  priority; void* protocol; scalar_t__ mac_header; scalar_t__ network_header; int /*<<< orphan*/  dev; } ;
struct port {int /*<<< orphan*/  lacpdu; struct slave* slave; } ;
struct TYPE_2__ {void* h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
struct lacpdu_header {int /*<<< orphan*/  lacpdu; TYPE_1__ hdr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 void* PKT_TYPE_LACPDU ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  lacpdu_mcast_addr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct port *port)
{
	struct slave *slave = port->slave;
	struct sk_buff *skb;
	struct lacpdu_header *lacpdu_header;
	int length = sizeof(struct lacpdu_header);

	skb = FUNC0(length);
	if (!skb) {
		return -ENOMEM;
	}

	skb->dev = slave->dev;
	FUNC4(skb);
	skb->network_header = skb->mac_header + ETH_HLEN;
	skb->protocol = PKT_TYPE_LACPDU;
	skb->priority = TC_PRIO_CONTROL;

	lacpdu_header = (struct lacpdu_header *)FUNC3(skb, length);

	FUNC2(lacpdu_header->hdr.h_dest, lacpdu_mcast_addr, ETH_ALEN);
	/* Note: source addres is set to be the member's PERMANENT address,
	   because we use it to identify loopback lacpdus in receive. */
	FUNC2(lacpdu_header->hdr.h_source, slave->perm_hwaddr, ETH_ALEN);
	lacpdu_header->hdr.h_proto = PKT_TYPE_LACPDU;

	lacpdu_header->lacpdu = port->lacpdu; // struct copy

	FUNC1(skb);

	return 0;
}