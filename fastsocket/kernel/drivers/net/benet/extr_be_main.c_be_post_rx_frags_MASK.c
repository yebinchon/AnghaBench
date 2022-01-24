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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct page {int dummy; } ;
struct be_rx_page_info {scalar_t__ page_offset; int last_page_user; struct page* page; } ;
struct be_queue_info {size_t head; int /*<<< orphan*/  used; int /*<<< orphan*/  id; } ;
struct be_rx_obj {int rx_post_starved; struct be_rx_page_info* page_info_tbl; struct be_queue_info q; struct be_adapter* adapter; } ;
struct be_eth_rx_d {void* fragpa_hi; void* fragpa_lo; } ;
struct be_adapter {scalar_t__ big_page_size; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  rx_post_fail; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ MAX_RX_POST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct page* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  bus ; 
 void* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct be_rx_page_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct be_queue_info*) ; 
 struct be_eth_rx_d* FUNC9 (struct be_queue_info*) ; 
 scalar_t__ rx_frag_size ; 
 TYPE_2__* FUNC10 (struct be_rx_obj*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct be_rx_obj *rxo, gfp_t gfp)
{
	struct be_adapter *adapter = rxo->adapter;
	struct be_rx_page_info *page_info = NULL, *prev_page_info = NULL;
	struct be_queue_info *rxq = &rxo->q;
	struct page *pagep = NULL;
	struct be_eth_rx_d *rxd;
	u64 page_dmaaddr = 0, frag_dmaaddr;
	u32 posted, page_offset = 0;

	page_info = &rxo->page_info_tbl[rxq->head];
	for (posted = 0; posted < MAX_RX_POST && !page_info->page; posted++) {
		if (!pagep) {
			pagep = FUNC2(adapter->big_page_size, gfp);
			if (FUNC11(!pagep)) {
				FUNC10(rxo)->rx_post_fail++;
				break;
			}
			page_dmaaddr = FUNC5(&adapter->pdev->dev, pagep,
						    0, adapter->big_page_size,
						    DMA_FROM_DEVICE);
			page_info->page_offset = 0;
		} else {
			FUNC6(pagep);
			page_info->page_offset = page_offset + rx_frag_size;
		}
		page_offset = page_info->page_offset;
		page_info->page = pagep;
		FUNC7(page_info, bus, page_dmaaddr);
		frag_dmaaddr = page_dmaaddr + page_info->page_offset;

		rxd = FUNC9(rxq);
		rxd->fragpa_lo = FUNC4(frag_dmaaddr & 0xFFFFFFFF);
		rxd->fragpa_hi = FUNC4(FUNC12(frag_dmaaddr));

		/* Any space left in the current big page for another frag? */
		if ((page_offset + rx_frag_size + rx_frag_size) >
					adapter->big_page_size) {
			pagep = NULL;
			page_info->last_page_user = true;
		}

		prev_page_info = page_info;
		FUNC8(rxq);
		page_info = &rxo->page_info_tbl[rxq->head];
	}
	if (pagep)
		prev_page_info->last_page_user = true;

	if (posted) {
		FUNC0(posted, &rxq->used);
		FUNC3(adapter, rxq->id, posted);
	} else if (FUNC1(&rxq->used) == 0) {
		/* Let be_worker replenish when memory is available */
		rxo->rx_post_starved = true;
	}
}