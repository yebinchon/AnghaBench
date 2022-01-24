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
struct TYPE_4__ {int /*<<< orphan*/  length; } ;
struct TYPE_5__ {TYPE_1__ upper; } ;
union e1000_adv_rx_desc {TYPE_2__ wb; } ;
struct sk_buff {int dummy; } ;
struct page {int /*<<< orphan*/  _count; } ;
struct igb_rx_buffer {int page_offset; struct page* page; } ;
struct igb_ring {int /*<<< orphan*/  q_vector; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  E1000_RXDADV_STAT_TSIP ; 
 int IGB_RX_BUFSZ ; 
 unsigned int IGB_RX_HDR_LEN ; 
 scalar_t__ IGB_TS_HDR_LEN ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (union e1000_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 unsigned char* FUNC11 (struct page*) ; 
 int FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 TYPE_3__* FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static bool FUNC19(struct igb_ring *rx_ring,
			    struct igb_rx_buffer *rx_buffer,
			    union e1000_adv_rx_desc *rx_desc,
			    struct sk_buff *skb)
{
	struct page *page = rx_buffer->page;
	unsigned int size = FUNC7(rx_desc->wb.upper.length);

	if ((size <= IGB_RX_HDR_LEN) && !FUNC16(skb)) {
		unsigned char *va = FUNC11(page) + rx_buffer->page_offset;

		if (FUNC6(rx_desc, E1000_RXDADV_STAT_TSIP)) {
			FUNC5(rx_ring->q_vector, va, skb);
			va += IGB_TS_HDR_LEN;
			size -= IGB_TS_HDR_LEN;
		}

		FUNC9(FUNC2(skb, size), va, FUNC0(size, sizeof(long)));

		/* we can reuse buffer as-is, just make sure it is local */
		if (FUNC8(FUNC13(page) == FUNC10()))
			return true;

		/* this page cannot be reused so discard it */
		FUNC14(page);
		return false;
	}

	FUNC15(skb, FUNC17(skb)->nr_frags, page,
			rx_buffer->page_offset, size, IGB_RX_BUFSZ);

	/* avoid re-using remote pages */
	if (FUNC18(FUNC13(page) != FUNC10()))
		return false;

#if (PAGE_SIZE < 8192)
	/* if we are only owner of page we can reuse it */
	if (FUNC18(FUNC12(page) != 1))
		return false;

	/* flip page offset to other buffer */
	rx_buffer->page_offset ^= IGB_RX_BUFSZ;

	/*
	 * since we are the only owner of the page and we need to
	 * increment it, just set the value to 2 in order to avoid
	 * an unnecessary locked operation
	 */
	FUNC3(&page->_count, 2);
#else
	/* move offset up to the next cache line */
	rx_buffer->page_offset += SKB_DATA_ALIGN(size);

	if (rx_buffer->page_offset > (PAGE_SIZE - IGB_RX_BUFSZ))
		return false;

	/* bump ref count on page before it is given to the stack */
	get_page(page);
#endif

	return true;
}