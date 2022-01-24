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
struct uli526x_board_info {scalar_t__ rx_avail_cnt; struct rx_desc* rx_insert_ptr; int /*<<< orphan*/  pdev; } ;
struct sk_buff {int dummy; } ;
struct rx_desc {struct rx_desc* next_rx_desc; void* rdes0; void* rdes2; struct sk_buff* rx_skb_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  RX_ALLOC_SIZE ; 
 scalar_t__ RX_DESC_CNT ; 
 void* FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct uli526x_board_info *db)
{
	struct rx_desc *rxptr;
	struct sk_buff *skb;

	rxptr = db->rx_insert_ptr;

	while(db->rx_avail_cnt < RX_DESC_CNT) {
		if ( ( skb = FUNC1(RX_ALLOC_SIZE) ) == NULL )
			break;
		rxptr->rx_skb_ptr = skb; /* FIXME (?) */
		rxptr->rdes2 = FUNC0(FUNC2(db->pdev,
							  FUNC3(skb),
							  RX_ALLOC_SIZE,
							  PCI_DMA_FROMDEVICE));
		FUNC4();
		rxptr->rdes0 = FUNC0(0x80000000);
		rxptr = rxptr->next_rx_desc;
		db->rx_avail_cnt++;
	}

	db->rx_insert_ptr = rxptr;
}