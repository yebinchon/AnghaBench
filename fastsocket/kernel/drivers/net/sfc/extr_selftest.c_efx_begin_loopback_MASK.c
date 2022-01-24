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
struct sk_buff {int dummy; } ;
struct efx_tx_queue {int /*<<< orphan*/  queue; struct efx_nic* efx; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct efx_loopback_state* loopback_selftest; } ;
struct efx_loopback_state {int packet_count; int /*<<< orphan*/  payload; struct sk_buff** skbs; } ;
struct TYPE_2__ {int /*<<< orphan*/  saddr; } ;
struct efx_loopback_payload {TYPE_1__ ip; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INADDR_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct efx_tx_queue*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_loopback_payload*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct efx_tx_queue *tx_queue)
{
	struct efx_nic *efx = tx_queue->efx;
	struct efx_loopback_state *state = efx->loopback_selftest;
	struct efx_loopback_payload *payload;
	struct sk_buff *skb;
	int i;
	netdev_tx_t rc;

	/* Transmit N copies of buffer */
	for (i = 0; i < state->packet_count; i++) {
		/* Allocate an skb, holding an extra reference for
		 * transmit completion counting */
		skb = FUNC1(sizeof(state->payload), GFP_KERNEL);
		if (!skb)
			return -ENOMEM;
		state->skbs[i] = skb;
		FUNC9(skb);

		/* Copy the payload in, incrementing the source address to
		 * exercise the rss vectors */
		payload = ((struct efx_loopback_payload *)
			   FUNC10(skb, sizeof(state->payload)));
		FUNC5(payload, &state->payload, sizeof(state->payload));
		payload->ip.saddr = FUNC3(INADDR_LOOPBACK | (i << 2));

		/* Ensure everything we've written is visible to the
		 * interrupt handler. */
		FUNC11();

		FUNC7(efx->net_dev);
		rc = FUNC2(tx_queue, skb);
		FUNC8(efx->net_dev);

		if (rc != NETDEV_TX_OK) {
			FUNC6(efx, drv, efx->net_dev,
				  "TX queue %d could not transmit packet %d of "
				  "%d in %s loopback test\n", tx_queue->queue,
				  i + 1, state->packet_count,
				  FUNC0(efx));

			/* Defer cleaning up the other skbs for the caller */
			FUNC4(skb);
			return -EPIPE;
		}
	}

	return 0;
}