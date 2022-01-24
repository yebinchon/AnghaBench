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
struct sk_buff {int dummy; } ;
struct hci_uart {struct bcsp_struct* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  qlen; } ;
struct bcsp_struct {int msgq_txseq; TYPE_1__ unack; int /*<<< orphan*/  rel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 struct sk_buff* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long arg)
{
	struct hci_uart *hu = (struct hci_uart *) arg;
	struct bcsp_struct *bcsp = hu->priv;
	struct sk_buff *skb;
	unsigned long flags;

	FUNC0("hu %p retransmitting %u pkts", hu, bcsp->unack.qlen);

	FUNC4(&bcsp->unack.lock, flags, SINGLE_DEPTH_NESTING);

	while ((skb = FUNC1(&bcsp->unack)) != NULL) {
		bcsp->msgq_txseq = (bcsp->msgq_txseq - 1) & 0x07;
		FUNC3(&bcsp->rel, skb);
	}

	FUNC5(&bcsp->unack.lock, flags);

	FUNC2(hu);
}