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
struct urb {unsigned char* setup_packet; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  f; } ;
struct st5481_ctrl {TYPE_1__ msg_fifo; int /*<<< orphan*/  busy; } ;
struct st5481_adapter {int /*<<< orphan*/  usb_dev; struct st5481_ctrl ctrl; } ;
struct TYPE_4__ {int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; } ;
struct ctrl_msg {TYPE_2__ dr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct urb *urb,
			      struct st5481_adapter *adapter)
{
	struct st5481_ctrl *ctrl = &adapter->ctrl;
	int r_index;

	if (FUNC4(0, &ctrl->busy)) {
		return;
	}

	if ((r_index = FUNC2(&ctrl->msg_fifo.f)) < 0) {
		FUNC3(0,&ctrl->busy);
		return;
	} 
	urb->setup_packet = 
		(unsigned char *)&ctrl->msg_fifo.data[r_index];
	
	FUNC0(1,"request=0x%02x,value=0x%04x,index=%x",
	    ((struct ctrl_msg *)urb->setup_packet)->dr.bRequest,
	    ((struct ctrl_msg *)urb->setup_packet)->dr.wValue,
	    ((struct ctrl_msg *)urb->setup_packet)->dr.wIndex);

	// Prepare the URB
	urb->dev = adapter->usb_dev;

	FUNC1(urb, GFP_ATOMIC);
}