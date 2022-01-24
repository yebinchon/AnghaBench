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
struct slave {TYPE_2__* dev; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rlb_update_delay_counter; } ;
struct bonding {TYPE_1__ alb_info; } ;
struct arp_pkt {scalar_t__ op_code; int /*<<< orphan*/  ip_src; int /*<<< orphan*/  mac_src; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPOP_REPLY ; 
 int /*<<< orphan*/  ARPOP_REQUEST ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  RLB_UPDATE_DELAY ; 
 struct arp_pkt* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct slave* FUNC4 (struct sk_buff*,struct bonding*) ; 
 int /*<<< orphan*/  FUNC5 (struct bonding*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct slave *FUNC6(struct sk_buff *skb, struct bonding *bond)
{
	struct arp_pkt *arp = FUNC0(skb);
	struct slave *tx_slave = NULL;

	if (arp->op_code == FUNC1(ARPOP_REPLY)) {
		/* the arp must be sent on the selected
		* rx channel
		*/
		tx_slave = FUNC4(skb, bond);
		if (tx_slave) {
			FUNC2(arp->mac_src,tx_slave->dev->dev_addr, ETH_ALEN);
		}
		FUNC3("Server sent ARP Reply packet\n");
	} else if (arp->op_code == FUNC1(ARPOP_REQUEST)) {
		/* Create an entry in the rx_hashtbl for this client as a
		 * place holder.
		 * When the arp reply is received the entry will be updated
		 * with the correct unicast address of the client.
		 */
		FUNC4(skb, bond);

		/* The ARP relpy packets must be delayed so that
		 * they can cancel out the influence of the ARP request.
		 */
		bond->alb_info.rlb_update_delay_counter = RLB_UPDATE_DELAY;

		/* arp requests are broadcast and are sent on the primary
		 * the arp request will collapse all clients on the subnet to
		 * the primary slave. We must register these clients to be
		 * updated with their assigned mac.
		 */
		FUNC5(bond, arp->ip_src);
		FUNC3("Server sent ARP Request packet\n");
	}

	return tx_slave;
}