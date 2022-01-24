#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st5481_intr {TYPE_1__* urb; } ;
struct st5481_ctrl {TYPE_1__* urb; } ;
struct st5481_adapter {struct st5481_ctrl ctrl; struct st5481_intr intr; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(struct st5481_adapter *adapter)
{
	struct st5481_intr *intr = &adapter->intr;
	struct st5481_ctrl *ctrl = &adapter->ctrl;

	FUNC0(1,"");

	// Stop and free Control and Interrupt URBs
	FUNC3(ctrl->urb);
	FUNC1(ctrl->urb->transfer_buffer);
	FUNC2(ctrl->urb);
	ctrl->urb = NULL;

	FUNC3(intr->urb);
	FUNC1(intr->urb->transfer_buffer);
	FUNC2(intr->urb);
	intr->urb = NULL;
}