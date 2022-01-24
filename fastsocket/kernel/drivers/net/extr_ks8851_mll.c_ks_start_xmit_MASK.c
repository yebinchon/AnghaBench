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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct ks_net {int /*<<< orphan*/  statelock; } ;

/* Variables and functions */
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_net*) ; 
 scalar_t__ FUNC5 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC6 (struct ks_net*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 struct ks_net* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct net_device *netdev)
{
	int retv = NETDEV_TX_OK;
	struct ks_net *ks = FUNC8(netdev);

	FUNC1(netdev->irq);
	FUNC3(ks);
	FUNC9(&ks->statelock);

	/* Extra space are required:
	*  4 byte for alignment, 4 for status/length, 4 for CRC
	*/

	if (FUNC7(FUNC5(ks) >= skb->len + 12)) {
		FUNC6(ks, skb->data, skb->len);
		FUNC0(skb);
	} else
		retv = NETDEV_TX_BUSY;
	FUNC10(&ks->statelock);
	FUNC4(ks);
	FUNC2(netdev->irq);
	return retv;
}