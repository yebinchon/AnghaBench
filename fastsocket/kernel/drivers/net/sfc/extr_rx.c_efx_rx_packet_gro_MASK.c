#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {unsigned int truesize; int /*<<< orphan*/  len; int /*<<< orphan*/  data_len; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  rxhash; } ;
struct napi_struct {int dummy; } ;
struct efx_rx_buffer {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/ * page; int /*<<< orphan*/  page_offset; } ;
struct efx_nic {unsigned int rx_buffer_truesize; TYPE_1__* net_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  core_index; } ;
struct efx_channel {int irq_mod_score; TYPE_3__ rx_queue; struct efx_nic* efx; struct napi_struct napi_str; } ;
typedef  scalar_t__ gro_result_t ;
struct TYPE_5__ {unsigned int nr_frags; } ;
struct TYPE_4__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int EFX_RX_PKT_CSUMMED ; 
 scalar_t__ GRO_DROP ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct efx_rx_buffer* FUNC1 (TYPE_3__*,struct efx_rx_buffer*) ; 
 struct sk_buff* FUNC2 (struct napi_struct*) ; 
 scalar_t__ FUNC3 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct efx_channel *channel, struct efx_rx_buffer *rx_buf,
		  unsigned int n_frags, u8 *eh)
{
	struct napi_struct *napi = &channel->napi_str;
	gro_result_t gro_result;
	struct efx_nic *efx = channel->efx;
	struct sk_buff *skb;

	skb = FUNC2(napi);
	if (FUNC8(!skb)) {
		while (n_frags--) {
			FUNC4(rx_buf->page);
			rx_buf->page = NULL;
			rx_buf = FUNC1(&channel->rx_queue, rx_buf);
		}
		return;
	}

	if (efx->net_dev->features & NETIF_F_RXHASH)
		skb->rxhash = FUNC0(eh);
	skb->ip_summed = ((rx_buf->flags & EFX_RX_PKT_CSUMMED) ?
			  CHECKSUM_UNNECESSARY : CHECKSUM_NONE);

	for (;;) {
		FUNC5(skb, FUNC7(skb)->nr_frags,
				   rx_buf->page, rx_buf->page_offset,
				   rx_buf->len);
		rx_buf->page = NULL;
		skb->len += rx_buf->len;
		if (FUNC7(skb)->nr_frags == n_frags)
			break;

		rx_buf = FUNC1(&channel->rx_queue, rx_buf);
	}

	skb->data_len = skb->len;
	skb->truesize += n_frags * efx->rx_buffer_truesize;

	FUNC6(skb, channel->rx_queue.core_index);

	gro_result = FUNC3(napi);
	if (gro_result != GRO_DROP)
		channel->irq_mod_score += 2;
}