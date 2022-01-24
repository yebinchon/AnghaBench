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
struct tso_state {scalar_t__ header_len; scalar_t__ in_len; scalar_t__ packet_space; int dma_flags; scalar_t__ unmap_len; int /*<<< orphan*/  unmap_addr; int /*<<< orphan*/  protocol; } ;
struct sk_buff {scalar_t__ len; } ;
struct efx_tx_queue {scalar_t__ write_count; scalar_t__ insert_count; int /*<<< orphan*/  tso_bursts; struct efx_nic* efx; } ;
struct efx_nic {TYPE_1__* pci_dev; int /*<<< orphan*/  net_dev; } ;
struct TYPE_4__ {scalar_t__ gso_segs; scalar_t__ gso_size; int nr_frags; scalar_t__ frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EFX_TSO_MAX_SEGS ; 
 int EFX_TX_BUF_MAP_SINGLE ; 
 int NETDEV_TX_OK ; 
 scalar_t__ FUNC1 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct efx_tx_queue*,struct sk_buff*,struct tso_state*) ; 
 int FUNC13 (struct tso_state*,struct efx_nic*,scalar_t__) ; 
 int FUNC14 (struct tso_state*,struct efx_nic*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct tso_state*,struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct efx_tx_queue*,struct sk_buff*,struct tso_state*) ; 
 int /*<<< orphan*/  tx_err ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct efx_tx_queue *tx_queue,
			       struct sk_buff *skb)
{
	struct efx_nic *efx = tx_queue->efx;
	int frag_i, rc;
	struct tso_state state;

	/* Since the stack does not limit the number of segments per
	 * skb, we must do so.  Otherwise an attacker may be able to
	 * make the TCP produce skbs that will never fit in our TX
	 * queue, causing repeated resets.
	 */
	if (FUNC17(FUNC11(skb)->gso_segs > EFX_TSO_MAX_SEGS)) {
		unsigned int excess =
			(FUNC11(skb)->gso_segs - EFX_TSO_MAX_SEGS) *
			FUNC11(skb)->gso_size;
		if (FUNC1(skb, skb->len - excess)) {
			FUNC2(skb);
			return NETDEV_TX_OK;
		}
	}

	/* Find the packet protocol and sanity-check it */
	state.protocol = FUNC7(skb);

	FUNC0(tx_queue->write_count != tx_queue->insert_count);

	FUNC15(&state, skb);

	/* Assume that skb header area contains exactly the headers, and
	 * all payload is in the frag list.
	 */
	if (FUNC10(skb) == state.header_len) {
		/* Grab the first payload fragment. */
		FUNC0(FUNC11(skb)->nr_frags < 1);
		frag_i = 0;
		rc = FUNC13(&state, efx,
				      FUNC11(skb)->frags + frag_i);
		if (rc)
			goto mem_err;
	} else {
		rc = FUNC14(&state, efx, skb);
		if (rc)
			goto mem_err;
		frag_i = -1;
	}

	if (FUNC16(tx_queue, skb, &state) < 0)
		goto mem_err;

	while (1) {
		FUNC12(tx_queue, skb, &state);

		/* Move onto the next fragment? */
		if (state.in_len == 0) {
			if (++frag_i >= FUNC11(skb)->nr_frags)
				/* End of payload reached. */
				break;
			rc = FUNC13(&state, efx,
					      FUNC11(skb)->frags + frag_i);
			if (rc)
				goto mem_err;
		}

		/* Start at new packet? */
		if (state.packet_space == 0 &&
		    FUNC16(tx_queue, skb, &state) < 0)
			goto mem_err;
	}

	/* Pass off to hardware */
	FUNC6(tx_queue);

	FUNC8(tx_queue);

	tx_queue->tso_bursts++;
	return NETDEV_TX_OK;

 mem_err:
	FUNC9(efx, tx_err, efx->net_dev,
		  "Out of memory for TSO headers, or DMA mapping error\n");
	FUNC2(skb);

	/* Free the DMA mapping we were in the process of writing out */
	if (state.unmap_len) {
		if (state.dma_flags & EFX_TX_BUF_MAP_SINGLE)
			FUNC4(&efx->pci_dev->dev, state.unmap_addr,
					 state.unmap_len, DMA_TO_DEVICE);
		else
			FUNC3(&efx->pci_dev->dev, state.unmap_addr,
				       state.unmap_len, DMA_TO_DEVICE);
	}

	FUNC5(tx_queue);
	return NETDEV_TX_OK;
}