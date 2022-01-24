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
struct TYPE_2__ {int ctrl; } ;
struct fritz_bcs {TYPE_1__ ctrl; scalar_t__ channel; struct fritz_adapter* adapter; } ;
struct fritz_adapter {scalar_t__ io; } ;

/* Variables and functions */
 scalar_t__ AVM_DATA ; 
 int AVM_IDX_HDLC_1 ; 
 int AVM_IDX_HDLC_2 ; 
 scalar_t__ AVM_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,int,int) ; 
 scalar_t__ HDLC_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct fritz_bcs *bcs, int which)
{
	struct fritz_adapter *adapter = bcs->adapter;
	int idx = bcs->channel ? AVM_IDX_HDLC_2 : AVM_IDX_HDLC_1;

	FUNC0(0x40, "hdlc %c wr%x ctrl %x",
	    'A' + bcs->channel, which, bcs->ctrl.ctrl);

	FUNC1(idx, adapter->io + AVM_INDEX);
	FUNC1(bcs->ctrl.ctrl, adapter->io + AVM_DATA + HDLC_CTRL);
}