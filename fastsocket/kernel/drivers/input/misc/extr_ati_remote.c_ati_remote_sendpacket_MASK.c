#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct ati_remote {int send_flags; TYPE_2__* out_urb; int /*<<< orphan*/  wait; TYPE_1__* interface; int /*<<< orphan*/  udev; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  dev; scalar_t__ transfer_buffer_length; scalar_t__ transfer_buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SEND_FLAG_COMPLETE ; 
 int SEND_FLAG_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ati_remote *ati_remote, u16 cmd, unsigned char *data)
{
	int retval = 0;

	/* Set up out_urb */
	FUNC3(ati_remote->out_urb->transfer_buffer + 1, data, FUNC1(cmd));
	((char *) ati_remote->out_urb->transfer_buffer)[0] = FUNC0(cmd);

	ati_remote->out_urb->transfer_buffer_length = FUNC1(cmd) + 1;
	ati_remote->out_urb->dev = ati_remote->udev;
	ati_remote->send_flags = SEND_FLAG_IN_PROGRESS;

	retval = FUNC5(ati_remote->out_urb, GFP_ATOMIC);
	if (retval) {
		FUNC2(&ati_remote->interface->dev,
			 "sendpacket: usb_submit_urb failed: %d\n", retval);
		return retval;
	}

	FUNC6(ati_remote->wait,
		((ati_remote->out_urb->status != -EINPROGRESS) ||
			(ati_remote->send_flags & SEND_FLAG_COMPLETE)),
		HZ);
	FUNC4(ati_remote->out_urb);

	return retval;
}