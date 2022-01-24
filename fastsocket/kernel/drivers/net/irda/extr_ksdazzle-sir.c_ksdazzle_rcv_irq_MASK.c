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
struct urb {scalar_t__ status; scalar_t__ actual_length; int /*<<< orphan*/ * transfer_buffer; struct ksdazzle_cb* context; } ;
struct net_device {int /*<<< orphan*/  stats; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct ksdazzle_cb {int receiving; TYPE_1__ rx_unwrap_buff; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ OUTSIDE_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct ksdazzle_cb *kingsun = urb->context;
	struct net_device *netdev = kingsun->netdev;

	/* in process of stopping, just drop data */
	if (!FUNC2(netdev)) {
		kingsun->receiving = 0;
		return;
	}

	/* unlink, shutdown, unplug, other nasties */
	if (urb->status != 0) {
		FUNC1("ksdazzle_rcv_irq: urb asynchronously failed - %d",
		    urb->status);
		kingsun->receiving = 0;
		return;
	}

	if (urb->actual_length > 0) {
		__u8 *bytes = urb->transfer_buffer;
		unsigned int i;

		for (i = 0; i < urb->actual_length; i++) {
			FUNC0(netdev, &netdev->stats,
					  &kingsun->rx_unwrap_buff, bytes[i]);
		}
		kingsun->receiving =
		    (kingsun->rx_unwrap_buff.state != OUTSIDE_FRAME) ? 1 : 0;
	}

	/* This urb has already been filled in ksdazzle_net_open. It is assumed that
	   urb keeps the pointer to the payload buffer.
	 */
	urb->status = 0;
	FUNC3(urb, GFP_ATOMIC);
}