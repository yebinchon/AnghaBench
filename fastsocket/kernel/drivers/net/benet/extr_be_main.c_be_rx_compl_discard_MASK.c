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
typedef  scalar_t__ u16 ;
struct be_rx_page_info {int /*<<< orphan*/  page; } ;
struct be_queue_info {int /*<<< orphan*/  len; } ;
struct be_rx_obj {struct be_queue_info q; } ;
struct be_rx_compl_info {scalar_t__ num_rcvd; int /*<<< orphan*/  rxq_idx; } ;

/* Variables and functions */
 struct be_rx_page_info* FUNC0 (struct be_rx_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct be_rx_page_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct be_rx_obj *rxo,
				struct be_rx_compl_info *rxcp)
{
	struct be_queue_info *rxq = &rxo->q;
	struct be_rx_page_info *page_info;
	u16 i, num_rcvd = rxcp->num_rcvd;

	for (i = 0; i < num_rcvd; i++) {
		page_info = FUNC0(rxo, rxcp->rxq_idx);
		FUNC3(page_info->page);
		FUNC2(page_info, 0, sizeof(*page_info));
		FUNC1(&rxcp->rxq_idx, rxq->len);
	}
}