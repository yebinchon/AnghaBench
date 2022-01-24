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
struct rtl8169_private {int /*<<< orphan*/  Rx_databuff; int /*<<< orphan*/  tx_skb; } ;
struct ring_info {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NUM_RX_DESC ; 
 int NUM_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct rtl8169_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int FUNC3 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct rtl8169_private *tp = FUNC1(dev);

	FUNC2(tp);

	FUNC0(tp->tx_skb, 0x0, NUM_TX_DESC * sizeof(struct ring_info));
	FUNC0(tp->Rx_databuff, 0x0, NUM_RX_DESC * sizeof(void *));

	return FUNC3(tp);
}