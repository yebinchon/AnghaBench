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
struct fritz_bcs {scalar_t__ rcvidx; unsigned char* rcvbuf; scalar_t__ channel; struct fritz_adapter* adapter; } ;
struct fritz_adapter {int type; int /*<<< orphan*/  hw_lock; scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ AVM_DATA ; 
#define  AVM_FRITZ_PCI 130 
#define  AVM_FRITZ_PCIV2 129 
#define  AVM_FRITZ_PNP 128 
 scalar_t__ AVM_HDLC_FIFO_1 ; 
 scalar_t__ AVM_HDLC_FIFO_2 ; 
 unsigned char AVM_IDX_HDLC_1 ; 
 unsigned char AVM_IDX_HDLC_2 ; 
 scalar_t__ AVM_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ HDLC_FIFO ; 
 scalar_t__ HSCX_BUFMAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct fritz_bcs *bcs, int count)
{
	struct fritz_adapter *adapter = bcs->adapter;
	unsigned char *p;
	unsigned char idx = bcs->channel ? AVM_IDX_HDLC_2 : AVM_IDX_HDLC_1;

	FUNC0(0x10, "hdlc_empty_fifo %d", count);
	if (bcs->rcvidx + count > HSCX_BUFMAX) {
		FUNC0(0x10, "hdlc_empty_fifo: incoming packet too large");
		return;
	}
	p = bcs->rcvbuf + bcs->rcvidx;
	bcs->rcvidx += count;
	switch (adapter->type) {
	case AVM_FRITZ_PCI:
		FUNC5(&adapter->hw_lock);
		FUNC4(idx, adapter->io + AVM_INDEX);
		FUNC2(adapter->io + AVM_DATA + HDLC_FIFO, 
		     p, (count + 3) / 4);
		FUNC6(&adapter->hw_lock);
		break;
	case AVM_FRITZ_PCIV2:
		FUNC2(adapter->io + 
		     (bcs->channel ? AVM_HDLC_FIFO_2 : AVM_HDLC_FIFO_1),
		     p, (count + 3) / 4);
		break;
	case AVM_FRITZ_PNP:
		FUNC5(&adapter->hw_lock);
		FUNC3(idx, adapter->io + AVM_INDEX);
		FUNC1(adapter->io + AVM_DATA, p, count);
		FUNC6(&adapter->hw_lock);
		break;
	}
}