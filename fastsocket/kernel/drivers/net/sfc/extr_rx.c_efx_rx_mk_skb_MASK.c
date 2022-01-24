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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; int data_len; unsigned int truesize; int /*<<< orphan*/  protocol; } ;
struct efx_rx_buffer {int len; int page_offset; int /*<<< orphan*/ * page; } ;
struct efx_nic {unsigned int rx_buffer_truesize; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  rx_buffer_order; } ;
struct efx_channel {int /*<<< orphan*/  rx_queue; struct efx_nic* efx; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EFX_PAGE_SKB_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 struct efx_rx_buffer* FUNC3 (int /*<<< orphan*/ *,struct efx_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC11(struct efx_channel *channel,
				     struct efx_rx_buffer *rx_buf,
				     unsigned int n_frags,
				     u8 *eh, int hdr_len)
{
	struct efx_nic *efx = channel->efx;
	struct sk_buff *skb;

	/* Allocate an SKB to store the headers */
	skb = FUNC6(efx->net_dev, hdr_len + EFX_PAGE_SKB_ALIGN);
	if (FUNC10(skb == NULL))
		return NULL;

	FUNC0(rx_buf->len < hdr_len);

	FUNC8(skb, EFX_PAGE_SKB_ALIGN);
	FUNC5(FUNC2(skb, hdr_len), eh, hdr_len);

	/* Append the remaining page(s) onto the frag list */
	if (rx_buf->len > hdr_len) {
		rx_buf->page_offset += hdr_len;
		rx_buf->len -= hdr_len;

		for (;;) {
			FUNC7(skb, FUNC9(skb)->nr_frags,
					   rx_buf->page, rx_buf->page_offset,
					   rx_buf->len);
			rx_buf->page = NULL;
			skb->len += rx_buf->len;
			skb->data_len += rx_buf->len;
			if (FUNC9(skb)->nr_frags == n_frags)
				break;

			rx_buf = FUNC3(&channel->rx_queue, rx_buf);
		}
	} else {
		FUNC1(rx_buf->page, efx->rx_buffer_order);
		rx_buf->page = NULL;
		n_frags = 0;
	}

	skb->truesize += n_frags * efx->rx_buffer_truesize;

	/* Move past the ethernet header */
	skb->protocol = FUNC4(skb, efx->net_dev);

	return skb;
}