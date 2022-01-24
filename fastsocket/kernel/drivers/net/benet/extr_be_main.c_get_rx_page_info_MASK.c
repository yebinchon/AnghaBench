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
typedef  size_t u16 ;
struct be_rx_page_info {int last_page_user; int /*<<< orphan*/  page; } ;
struct be_queue_info {int /*<<< orphan*/  used; } ;
struct be_rx_obj {struct be_rx_page_info* page_info_tbl; struct be_queue_info q; struct be_adapter* adapter; } ;
struct be_adapter {int /*<<< orphan*/  big_page_size; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_rx_page_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct be_rx_page_info *FUNC4(struct be_rx_obj *rxo,
						u16 frag_idx)
{
	struct be_adapter *adapter = rxo->adapter;
	struct be_rx_page_info *rx_page_info;
	struct be_queue_info *rxq = &rxo->q;

	rx_page_info = &rxo->page_info_tbl[frag_idx];
	FUNC0(!rx_page_info->page);

	if (rx_page_info->last_page_user) {
		FUNC2(&adapter->pdev->dev,
			       FUNC3(rx_page_info, bus),
			       adapter->big_page_size, DMA_FROM_DEVICE);
		rx_page_info->last_page_user = false;
	}

	FUNC1(&rxq->used);
	return rx_page_info;
}