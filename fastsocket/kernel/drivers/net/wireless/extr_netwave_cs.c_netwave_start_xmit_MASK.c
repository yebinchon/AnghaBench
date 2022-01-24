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
struct sk_buff {short len; unsigned char* data; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 short ETH_ZLEN ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (unsigned char*,short,struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC4(struct sk_buff *skb,
					    struct net_device *dev) {
	/* This flag indicate that the hardware can't perform a transmission.
	 * Theoritically, NET3 check it before sending a packet to the driver,
	 * but in fact it never do that and pool continuously.
	 * As the watchdog will abort too long transmissions, we are quite safe...
	 */

    FUNC2(dev);

    {
	short length = ETH_ZLEN < skb->len ? skb->len : ETH_ZLEN;
	unsigned char* buf = skb->data;
	
	if (FUNC3( buf, length, dev) == 1) {
	    /* Some error, let's make them call us another time? */
	    FUNC1(dev);
	}
	dev->trans_start = jiffies;
    }
    FUNC0(skb);
    
    return NETDEV_TX_OK;
}