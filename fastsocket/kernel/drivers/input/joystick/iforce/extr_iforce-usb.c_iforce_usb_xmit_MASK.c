#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t head; size_t tail; char* buf; } ;
struct iforce {int /*<<< orphan*/  xmit_lock; TYPE_2__* dev; int /*<<< orphan*/  xmit_flags; TYPE_3__* out; TYPE_1__ xmit; int /*<<< orphan*/  usbdev; } ;
struct TYPE_6__ {int transfer_buffer_length; scalar_t__ transfer_buffer; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IFORCE_XMIT_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC8(struct iforce *iforce)
{
	int n, c;
	unsigned long flags;

	FUNC5(&iforce->xmit_lock, flags);

	if (iforce->xmit.head == iforce->xmit.tail) {
		FUNC2(IFORCE_XMIT_RUNNING, iforce->xmit_flags);
		FUNC6(&iforce->xmit_lock, flags);
		return;
	}

	((char *)iforce->out->transfer_buffer)[0] = iforce->xmit.buf[iforce->xmit.tail];
	FUNC1(iforce->xmit.tail, 1);
	n = iforce->xmit.buf[iforce->xmit.tail];
	FUNC1(iforce->xmit.tail, 1);

	iforce->out->transfer_buffer_length = n + 1;
	iforce->out->dev = iforce->usbdev;

	/* Copy rest of data then */
	c = FUNC0(iforce->xmit.head, iforce->xmit.tail, XMIT_SIZE);
	if (n < c) c=n;

	FUNC4(iforce->out->transfer_buffer + 1,
	       &iforce->xmit.buf[iforce->xmit.tail],
	       c);
	if (n != c) {
		FUNC4(iforce->out->transfer_buffer + 1 + c,
		       &iforce->xmit.buf[0],
		       n-c);
	}
	FUNC1(iforce->xmit.tail, n);

	if ( (n=FUNC7(iforce->out, GFP_ATOMIC)) ) {
		FUNC2(IFORCE_XMIT_RUNNING, iforce->xmit_flags);
		FUNC3(&iforce->dev->dev, "usb_submit_urb failed %d\n", n);
	}

	/* The IFORCE_XMIT_RUNNING bit is not cleared here. That's intended.
	 * As long as the urb completion handler is not called, the transmiting
	 * is considered to be running */
	FUNC6(&iforce->xmit_lock, flags);
}