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
typedef  int /*<<< orphan*/  tx_desc ;
struct tsi108_prv_data {int txhead; int txtail; int rxtail; int /*<<< orphan*/  txdma; int /*<<< orphan*/  txring; int /*<<< orphan*/  rxdma; int /*<<< orphan*/  rxring; scalar_t__ rxfree; struct sk_buff** rxskbs; int /*<<< orphan*/  irq_num; int /*<<< orphan*/  txfree; struct sk_buff** txskbs; int /*<<< orphan*/  timer; int /*<<< orphan*/  napi; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  rx_desc ;

/* Variables and functions */
 int /*<<< orphan*/  TSI108_EC_INTMASK ; 
 int /*<<< orphan*/  TSI108_MAC_CFG1 ; 
 int TSI108_RXRING_LEN ; 
 int TSI108_TXRING_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tsi108_prv_data* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct tsi108_prv_data *data = FUNC6(dev);

	FUNC7(dev);
	FUNC5(&data->napi);

	FUNC1(&data->timer);

	FUNC9(dev);
	FUNC8(dev);
	FUNC0(TSI108_EC_INTMASK, ~0);
	FUNC0(TSI108_MAC_CFG1, 0);

	/* Check for any pending TX packets, and drop them. */

	while (!data->txfree || data->txhead != data->txtail) {
		int tx = data->txtail;
		struct sk_buff *skb;
		skb = data->txskbs[tx];
		data->txtail = (data->txtail + 1) % TSI108_TXRING_LEN;
		data->txfree++;
		FUNC2(skb);
	}

	FUNC4(data->irq_num, dev);

	/* Discard the RX ring. */

	while (data->rxfree) {
		int rx = data->rxtail;
		struct sk_buff *skb;

		skb = data->rxskbs[rx];
		data->rxtail = (data->rxtail + 1) % TSI108_RXRING_LEN;
		data->rxfree--;
		FUNC2(skb);
	}

	FUNC3(0,
			    TSI108_RXRING_LEN * sizeof(rx_desc),
			    data->rxring, data->rxdma);
	FUNC3(0,
			    TSI108_TXRING_LEN * sizeof(tx_desc),
			    data->txring, data->txdma);

	return 0;
}