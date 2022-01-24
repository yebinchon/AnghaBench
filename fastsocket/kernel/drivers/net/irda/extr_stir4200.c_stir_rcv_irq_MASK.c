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
struct urb {scalar_t__ status; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; struct stir_cb* context; } ;
struct stir_cb {int /*<<< orphan*/  thread; scalar_t__ receiving; TYPE_1__* netdev; int /*<<< orphan*/  rx_time; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stir_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct stir_cb *stir = urb->context;
	int err;

	/* in process of stopping, just drop data */
	if (!FUNC2(stir->netdev))
		return;

	/* unlink, shutdown, unplug, other nasties */
	if (urb->status != 0) 
		return;

	if (urb->actual_length > 0) {
		FUNC3("receive %d\n", urb->actual_length);
		FUNC4(stir, urb->transfer_buffer,
			     urb->actual_length);
		
		FUNC1(&stir->rx_time);
	}

	/* kernel thread is stopping receiver don't resubmit */
	if (!stir->receiving)
		return;

	/* resubmit existing urb */
	err = FUNC5(urb, GFP_ATOMIC);

	/* in case of error, the kernel thread will restart us */
	if (err) {
		FUNC0(&stir->netdev->dev, "usb receive submit error: %d\n",
			 err);
		stir->receiving = 0;
		FUNC6(stir->thread);
	}
}