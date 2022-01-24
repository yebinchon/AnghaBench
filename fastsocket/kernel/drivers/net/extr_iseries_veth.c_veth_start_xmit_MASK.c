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
struct veth_port {int lpar_map; } ;
struct sk_buff {unsigned char* data; } ;
struct net_device {int dummy; } ;
typedef  int HvLpIndexMap ;
typedef  int HvLpIndex ;

/* Variables and functions */
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct veth_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct net_device *dev)
{
	unsigned char *frame = skb->data;
	struct veth_port *port = FUNC1(dev);
	HvLpIndexMap lpmask;

	if (! (frame[0] & 0x01)) {
		/* unicast packet */
		HvLpIndex rlp = frame[5];

		if ( ! ((1 << rlp) & port->lpar_map) ) {
			FUNC0(skb);
			return NETDEV_TX_OK;
		}

		lpmask = 1 << rlp;
	} else {
		lpmask = port->lpar_map;
	}

	FUNC2(skb, lpmask, dev);

	FUNC0(skb);

	return NETDEV_TX_OK;
}