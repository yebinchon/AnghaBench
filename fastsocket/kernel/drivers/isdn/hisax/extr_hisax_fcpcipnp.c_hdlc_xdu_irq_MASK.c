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
struct TYPE_4__ {int /*<<< orphan*/  cmd; scalar_t__ xml; } ;
struct TYPE_3__ {TYPE_2__ sr; } ;
struct fritz_bcs {scalar_t__ mode; scalar_t__ tx_cnt; int /*<<< orphan*/  tx_skb; TYPE_1__ ctrl; struct fritz_adapter* adapter; } ;
struct fritz_adapter {int /*<<< orphan*/  (* write_ctrl ) (struct fritz_bcs*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  HDLC_CMD_XRS ; 
 scalar_t__ L1_MODE_HDLC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fritz_bcs*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fritz_bcs*,int) ; 

__attribute__((used)) static inline void FUNC4(struct fritz_bcs *bcs)
{
	struct fritz_adapter *adapter = bcs->adapter;
	

	/* Here we lost an TX interrupt, so
	 * restart transmitting the whole frame.
	 */
	bcs->ctrl.sr.xml = 0;
	bcs->ctrl.sr.cmd |= HDLC_CMD_XRS;
	adapter->write_ctrl(bcs, 1);
	bcs->ctrl.sr.cmd &= ~HDLC_CMD_XRS;

	if (!bcs->tx_skb) {
		FUNC0(0x10, "XDU without skb");
		adapter->write_ctrl(bcs, 1);
		return;
	}
	/* only hdlc restarts the frame, transparent mode must continue */
	if (bcs->mode == L1_MODE_HDLC) {
		FUNC1(bcs->tx_skb, bcs->tx_cnt);
		bcs->tx_cnt = 0;
	}
}