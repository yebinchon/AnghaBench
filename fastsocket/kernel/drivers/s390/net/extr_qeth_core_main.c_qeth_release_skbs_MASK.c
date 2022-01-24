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
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  users; scalar_t__ sk; } ;
struct qeth_qdio_out_buffer {int /*<<< orphan*/  skb_list; int /*<<< orphan*/  state; } ;
struct iucv_sock {int /*<<< orphan*/  (* sk_txnotify ) (struct sk_buff*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ETH_P_AF_IUCV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,long) ; 
 scalar_t__ QETH_QDIO_BUF_IN_CQ ; 
 scalar_t__ QETH_QDIO_BUF_PENDING ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  TX_NOTIFY_GENERALERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct iucv_sock* FUNC6 (scalar_t__) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct qeth_qdio_out_buffer *buf)
{
	struct sk_buff *skb;
	struct iucv_sock *iucv;
	int notify_general_error = 0;

	if (FUNC4(&buf->state) == QETH_QDIO_BUF_PENDING)
		notify_general_error = 1;

	/* release may never happen from within CQ tasklet scope */
	FUNC0(FUNC4(&buf->state) == QETH_QDIO_BUF_IN_CQ);

	skb = FUNC7(&buf->skb_list);
	while (skb) {
		FUNC1(TRACE, 5, "skbr");
		FUNC2(TRACE, 5, "%lx", (long) skb);
		if (notify_general_error && skb->protocol == ETH_P_AF_IUCV) {
			if (skb->sk) {
				iucv = FUNC6(skb->sk);
				iucv->sk_txnotify(skb, TX_NOTIFY_GENERALERROR);
			}
		}
		FUNC3(&skb->users);
		FUNC5(skb);
		skb = FUNC7(&buf->skb_list);
	}
}