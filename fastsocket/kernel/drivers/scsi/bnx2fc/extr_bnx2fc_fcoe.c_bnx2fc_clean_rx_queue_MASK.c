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
struct sk_buff_head {int /*<<< orphan*/  lock; struct sk_buff* next; } ;
struct sk_buff {struct sk_buff* next; } ;
struct fcoe_rcv_info {struct fc_lport* fr_dev; } ;
struct fcoe_percpu_s {struct sk_buff_head fcoe_rx_list; } ;
struct fc_lport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sk_buff_head*) ; 
 struct fcoe_percpu_s bnx2fc_global ; 
 struct fcoe_rcv_info* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct fc_lport *lp)
{
	struct fcoe_percpu_s *bg;
	struct fcoe_rcv_info *fr;
	struct sk_buff_head *list;
	struct sk_buff *skb, *next;
	struct sk_buff *head;

	bg = &bnx2fc_global;
	FUNC3(&bg->fcoe_rx_list.lock);
	list = &bg->fcoe_rx_list;
	head = list->next;
	for (skb = head; skb != (struct sk_buff *)list;
	     skb = next) {
		next = skb->next;
		fr = FUNC1(skb);
		if (fr->fr_dev == lp) {
			FUNC0(skb, list);
			FUNC2(skb);
		}
	}
	FUNC4(&bg->fcoe_rx_list.lock);
}