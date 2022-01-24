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
struct net_device {int dummy; } ;
struct kaweth_device {int opened; int /*<<< orphan*/  intf; int /*<<< orphan*/  rx_urb; TYPE_1__* irq_urb; int /*<<< orphan*/  intbufferhandle; int /*<<< orphan*/  intbuffer; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTBUFFERSIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  int_callback ; 
 int /*<<< orphan*/  FUNC2 (struct kaweth_device*) ; 
 int FUNC3 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 struct kaweth_device* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kaweth_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *net)
{
	struct kaweth_device *kaweth = FUNC4(net);
	int res;

	FUNC0("Opening network device.");

	res = FUNC7(kaweth->intf);
	if (res) {
		FUNC1("Interface cannot be resumed.");
		return -EIO;
	}
	res = FUNC3(kaweth, GFP_KERNEL);
	if (res)
		goto err_out;

	FUNC8(
		kaweth->irq_urb,
		kaweth->dev,
		FUNC10(kaweth->dev, 3),
		kaweth->intbuffer,
		INTBUFFERSIZE,
		int_callback,
		kaweth,
		250); /* overriding the descriptor */
	kaweth->irq_urb->transfer_dma = kaweth->intbufferhandle;
	kaweth->irq_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	res = FUNC11(kaweth->irq_urb, GFP_KERNEL);
	if (res) {
		FUNC9(kaweth->rx_urb);
		goto err_out;
	}
	kaweth->opened = 1;

	FUNC5(net);

	FUNC2(kaweth);
	return 0;

err_out:
	FUNC6(kaweth->intf);
	return -EIO;
}