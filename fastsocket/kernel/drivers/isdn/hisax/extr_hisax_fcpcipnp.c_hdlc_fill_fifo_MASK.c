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
struct sk_buff {scalar_t__ len; unsigned char* data; } ;
struct TYPE_3__ {int xml; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {TYPE_1__ sr; } ;
struct fritz_bcs {int fifo_size; scalar_t__ mode; int tx_cnt; int /*<<< orphan*/  channel; TYPE_2__ ctrl; struct sk_buff* tx_skb; struct fritz_adapter* adapter; } ;
struct fritz_adapter {int type; int /*<<< orphan*/  hw_lock; scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ AVM_DATA ; 
#define  AVM_FRITZ_PCI 130 
#define  AVM_FRITZ_PCIV2 129 
#define  AVM_FRITZ_PNP 128 
 scalar_t__ AVM_HDLC_FIFO_1 ; 
 scalar_t__ AVM_HDLC_FIFO_2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  HDLC_CMD_XME ; 
 scalar_t__ HDLC_FIFO ; 
 scalar_t__ L1_MODE_TRANS ; 
 int /*<<< orphan*/  FUNC2 (struct fritz_bcs*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fritz_bcs*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fritz_bcs*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct fritz_bcs *bcs)
{
	struct fritz_adapter *adapter = bcs->adapter;
	struct sk_buff *skb = bcs->tx_skb;
	int count;
	unsigned long flags;
	unsigned char *p;

	FUNC1(0x40, "hdlc_fill_fifo");

	FUNC0(skb->len == 0);

	bcs->ctrl.sr.cmd &= ~HDLC_CMD_XME;
	if (bcs->tx_skb->len > bcs->fifo_size) {
		count = bcs->fifo_size;
	} else {
		count = bcs->tx_skb->len;
		if (bcs->mode != L1_MODE_TRANS)
			bcs->ctrl.sr.cmd |= HDLC_CMD_XME;
	}
	FUNC1(0x40, "hdlc_fill_fifo %d/%d", count, bcs->tx_skb->len);
	p = bcs->tx_skb->data;
	FUNC7(bcs->tx_skb, count);
	bcs->tx_cnt += count;
	bcs->ctrl.sr.xml = ((count == bcs->fifo_size) ? 0 : count);

	switch (adapter->type) {
	case AVM_FRITZ_PCI:
		FUNC8(&adapter->hw_lock, flags);
		// sets the correct AVM_INDEX, too
		FUNC2(bcs, 3);
		FUNC6(adapter->io + AVM_DATA + HDLC_FIFO,
		      p, (count + 3) / 4);
		FUNC9(&adapter->hw_lock, flags);
		break;
	case AVM_FRITZ_PCIV2:
		FUNC4(bcs, 3);
		FUNC6(adapter->io + 
		      (bcs->channel ? AVM_HDLC_FIFO_2 : AVM_HDLC_FIFO_1),
		      p, (count + 3) / 4);
		break;
	case AVM_FRITZ_PNP:
		FUNC8(&adapter->hw_lock, flags);
		// sets the correct AVM_INDEX, too
		FUNC3(bcs, 3);
		FUNC5(adapter->io + AVM_DATA, p, count);
		FUNC9(&adapter->hw_lock, flags);
		break;
	}
}