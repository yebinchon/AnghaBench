#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {void* wLength; scalar_t__ wIndex; void* wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  netdev; TYPE_3__* ctrl_urb; int /*<<< orphan*/  rx_creg; TYPE_1__ dr; int /*<<< orphan*/  udev; } ;
typedef  TYPE_2__ rtl8150_t ;
struct TYPE_9__ {int /*<<< orphan*/  transfer_buffer_length; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RTL8150_REQT_WRITE ; 
 int /*<<< orphan*/  RTL8150_REQ_SET_REGS ; 
 int /*<<< orphan*/  RX_REG_SET ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctrl_callback ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(rtl8150_t * dev, u16 indx, u16 size)
{
	int ret;

	if (FUNC4(RX_REG_SET, &dev->flags))
		return -EAGAIN;

	dev->dr.bRequestType = RTL8150_REQT_WRITE;
	dev->dr.bRequest = RTL8150_REQ_SET_REGS;
	dev->dr.wValue = FUNC0(indx);
	dev->dr.wIndex = 0;
	dev->dr.wLength = FUNC0(size);
	dev->ctrl_urb->transfer_buffer_length = size;
	FUNC5(dev->ctrl_urb, dev->udev,
			 FUNC6(dev->udev, 0), (char *) &dev->dr,
			 &dev->rx_creg, size, ctrl_callback, dev);
	if ((ret = FUNC7(dev->ctrl_urb, GFP_ATOMIC))) {
		if (ret == -ENODEV)
			FUNC2(dev->netdev);
		FUNC1("control request submission failed: %d", ret);
	} else
		FUNC3(RX_REG_SET, &dev->flags);

	return ret;
}