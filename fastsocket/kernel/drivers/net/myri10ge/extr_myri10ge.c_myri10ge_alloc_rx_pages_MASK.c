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
struct page {int dummy; } ;
struct myri10ge_rx_buf {int watchdog_needed; int fill_cnt; int cnt; int mask; int page_offset; TYPE_2__* shadow; int /*<<< orphan*/ * lanai; int /*<<< orphan*/  bus; TYPE_1__* info; struct page* page; } ;
struct myri10ge_priv {int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {void* addr_high; void* addr_low; } ;
struct TYPE_3__ {int page_offset; struct page* page; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int /*<<< orphan*/  MYRI10GE_ALLOC_ORDER ; 
 int MYRI10GE_ALLOC_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ FUNC2 (int) ; 
 int __GFP_COMP ; 
 struct page* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bus ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(struct myri10ge_priv *mgp, struct myri10ge_rx_buf *rx,
			int bytes, int watchdog)
{
	struct page *page;
	int idx;

	if (FUNC9(rx->watchdog_needed && !watchdog))
		return;

	/* try to refill entire ring */
	while (rx->fill_cnt != (rx->cnt + rx->mask + 1)) {
		idx = rx->fill_cnt & rx->mask;
		if (rx->page_offset + bytes <= MYRI10GE_ALLOC_SIZE) {
			/* we can use part of previous page */
			FUNC4(rx->page);
		} else {
			/* we need a new page */
			page =
			    FUNC3(GFP_ATOMIC | __GFP_COMP,
					MYRI10GE_ALLOC_ORDER);
			if (FUNC9(page == NULL)) {
				if (rx->fill_cnt - rx->cnt < 16)
					rx->watchdog_needed = 1;
				return;
			}
			rx->page = page;
			rx->page_offset = 0;
			rx->bus = FUNC7(mgp->pdev, page, 0,
					       MYRI10GE_ALLOC_SIZE,
					       PCI_DMA_FROMDEVICE);
		}
		rx->info[idx].page = rx->page;
		rx->info[idx].page_offset = rx->page_offset;
		/* note that this is the address of the start of the
		 * page */
		FUNC8(&rx->info[idx], bus, rx->bus);
		rx->shadow[idx].addr_low =
		    FUNC5(FUNC1(rx->bus) + rx->page_offset);
		rx->shadow[idx].addr_high =
		    FUNC5(FUNC0(rx->bus));

		/* start next packet on a cacheline boundary */
		rx->page_offset += FUNC2(bytes);

#if MYRI10GE_ALLOC_SIZE > 4096
		/* don't cross a 4KB boundary */
		if ((rx->page_offset >> 12) !=
		    ((rx->page_offset + bytes - 1) >> 12))
			rx->page_offset = (rx->page_offset + 4096) & ~4095;
#endif
		rx->fill_cnt++;

		/* copy 8 descriptors to the firmware at a time */
		if ((idx & 7) == 7) {
			FUNC6(&rx->lanai[idx - 7],
					    &rx->shadow[idx - 7]);
		}
	}
}