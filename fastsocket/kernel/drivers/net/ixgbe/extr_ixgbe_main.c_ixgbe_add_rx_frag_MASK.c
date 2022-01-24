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
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
struct sk_buff {int dummy; } ;
struct page {int /*<<< orphan*/  _count; } ;
struct ixgbe_rx_buffer {int page_offset; struct page* page; } ;
struct ixgbe_ring {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int IXGBE_RX_HDR_SIZE ; 
 int L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 unsigned int FUNC4 (struct ixgbe_ring*) ; 
 unsigned int FUNC5 (struct ixgbe_ring*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC9 () ; 
 unsigned char* FUNC10 (struct page*) ; 
 int FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 TYPE_3__* FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static bool FUNC18(struct ixgbe_ring *rx_ring,
			      struct ixgbe_rx_buffer *rx_buffer,
			      union ixgbe_adv_rx_desc *rx_desc,
			      struct sk_buff *skb)
{
	struct page *page = rx_buffer->page;
	unsigned int size = FUNC6(rx_desc->wb.upper.length);
#if (PAGE_SIZE < 8192)
	unsigned int truesize = FUNC4(rx_ring);
#else
	unsigned int truesize = ALIGN(size, L1_CACHE_BYTES);
	unsigned int last_offset = ixgbe_rx_pg_size(rx_ring) -
				   ixgbe_rx_bufsz(rx_ring);
#endif

	if ((size <= IXGBE_RX_HDR_SIZE) && !FUNC15(skb)) {
		unsigned char *va = FUNC10(page) + rx_buffer->page_offset;

		FUNC8(FUNC1(skb, size), va, FUNC0(size, sizeof(long)));

		/* we can reuse buffer as-is, just make sure it is local */
		if (FUNC7(FUNC12(page) == FUNC9()))
			return true;

		/* this page cannot be reused so discard it */
		FUNC13(page);
		return false;
	}

	FUNC14(skb, FUNC16(skb)->nr_frags, page,
			rx_buffer->page_offset, size, truesize);

	/* avoid re-using remote pages */
	if (FUNC17(FUNC12(page) != FUNC9()))
		return false;

#if (PAGE_SIZE < 8192)
	/* if we are only owner of page we can reuse it */
	if (FUNC17(FUNC11(page) != 1))
		return false;

	/* flip page offset to other buffer */
	rx_buffer->page_offset ^= truesize;

	/*
	 * since we are the only owner of the page and we need to
	 * increment it, just set the value to 2 in order to avoid
	 * an unecessary locked operation
	 */
	FUNC2(&page->_count, 2);
#else
	/* move offset up to the next cache line */
	rx_buffer->page_offset += truesize;

	if (rx_buffer->page_offset > last_offset)
		return false;

	/* bump ref count on page before it is given to the stack */
	get_page(page);
#endif

	return true;
}