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
struct sk_buff {scalar_t__ protocol; scalar_t__ sk; } ;
struct qeth_qdio_out_q {int dummy; } ;
struct qeth_qdio_out_buffer {int /*<<< orphan*/  skb_list; } ;
struct iucv_sock {int /*<<< orphan*/  (* sk_txnotify ) (struct sk_buff*,int) ;} ;
typedef  enum iucv_tx_notify { ____Placeholder_iucv_tx_notify } iucv_tx_notify ;

/* Variables and functions */
 scalar_t__ ETH_P_AF_IUCV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,long) ; 
 int /*<<< orphan*/  TRACE ; 
 struct iucv_sock* FUNC1 (scalar_t__) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC7(struct qeth_qdio_out_q *q,
		struct qeth_qdio_out_buffer *buf,
		enum iucv_tx_notify notification)
{
	struct sk_buff *skb;

	if (FUNC3(&buf->skb_list))
		goto out;
	skb = FUNC2(&buf->skb_list);
	while (skb) {
		FUNC0(TRACE, 5, "skbn%d", notification);
		FUNC0(TRACE, 5, "%lx", (long) skb);
		if (skb->protocol == ETH_P_AF_IUCV) {
			if (skb->sk) {
				struct iucv_sock *iucv = FUNC1(skb->sk);
				iucv->sk_txnotify(skb, notification);
			}
		}
		if (FUNC4(&buf->skb_list, skb))
			skb = NULL;
else
			skb = FUNC5(&buf->skb_list, skb);
	}
out:
	return;
}