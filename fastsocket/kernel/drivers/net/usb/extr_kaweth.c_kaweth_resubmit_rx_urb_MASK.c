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
struct kaweth_device {int suspend_lowmem_rx; int /*<<< orphan*/  lowmem_work; TYPE_1__* rx_urb; int /*<<< orphan*/  rxbufferhandle; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  KAWETH_BUF_SIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  kaweth_usb_receive ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kaweth_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct kaweth_device *kaweth,
						gfp_t mem_flags)
{
	int result;

	FUNC2(kaweth->rx_urb,
		      kaweth->dev,
		      FUNC3(kaweth->dev, 1),
		      kaweth->rx_buf,
		      KAWETH_BUF_SIZE,
		      kaweth_usb_receive,
		      kaweth);
	kaweth->rx_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	kaweth->rx_urb->transfer_dma = kaweth->rxbufferhandle;

	if((result = FUNC4(kaweth->rx_urb, mem_flags))) {
		if (result == -ENOMEM) {
			kaweth->suspend_lowmem_rx = 1;
			FUNC1(&kaweth->lowmem_work, HZ/4);
		}
		FUNC0("resubmitting rx_urb %d failed", result);
	} else {
		kaweth->suspend_lowmem_rx = 0;
	}

	return result;
}