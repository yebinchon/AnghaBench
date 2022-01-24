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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {struct ctrl_msg* data; int /*<<< orphan*/  f; } ;
struct st5481_ctrl {int /*<<< orphan*/  urb; TYPE_1__ msg_fifo; } ;
struct st5481_adapter {struct st5481_ctrl ctrl; } ;
struct TYPE_4__ {scalar_t__ wLength; void* wIndex; void* wValue; void* bRequest; void* bRequestType; } ;
struct ctrl_msg {void* context; int /*<<< orphan*/  complete; TYPE_2__ dr; } ;
typedef  int /*<<< orphan*/  ctrl_complete_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct st5481_adapter*) ; 

__attribute__((used)) static void FUNC4(struct st5481_adapter *adapter,
			 u8 request, u8 requesttype, u16 value, u16 index,
			 ctrl_complete_t complete, void *context)
{
	struct st5481_ctrl *ctrl = &adapter->ctrl;
	int w_index;
	struct ctrl_msg *ctrl_msg;
	
	if ((w_index = FUNC2(&ctrl->msg_fifo.f)) < 0) {
		FUNC0("control msg FIFO full");
		return;
	}
	ctrl_msg = &ctrl->msg_fifo.data[w_index]; 
   
	ctrl_msg->dr.bRequestType = requesttype;
	ctrl_msg->dr.bRequest = request;
	ctrl_msg->dr.wValue = FUNC1(&value);
	ctrl_msg->dr.wIndex = FUNC1(&index);
	ctrl_msg->dr.wLength = 0;
	ctrl_msg->complete = complete;
	ctrl_msg->context = context;

	FUNC3(ctrl->urb, adapter);
}