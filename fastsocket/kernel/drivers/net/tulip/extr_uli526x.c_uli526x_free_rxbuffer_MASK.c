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
struct uli526x_board_info {scalar_t__ rx_avail_cnt; TYPE_1__* rx_ready_ptr; } ;
struct TYPE_2__ {struct TYPE_2__* next_rx_desc; int /*<<< orphan*/  rx_skb_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uli526x_board_info * db)
{
	FUNC0(0, "uli526x_free_rxbuffer()", 0);

	/* free allocated rx buffer */
	while (db->rx_avail_cnt) {
		FUNC1(db->rx_ready_ptr->rx_skb_ptr);
		db->rx_ready_ptr = db->rx_ready_ptr->next_rx_desc;
		db->rx_avail_cnt--;
	}
}