#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct urb {scalar_t__ status; struct kingsun_cb* context; } ;
struct net_device {int dummy; } ;
struct kingsun_cb {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct urb *urb)
{
	struct kingsun_cb *kingsun = urb->context;
	struct net_device *netdev = kingsun->netdev;

	/* in process of stopping, just drop data */
	if (!FUNC1(kingsun->netdev)) {
		FUNC0("kingsun_send_irq: Network not running!");
		return;
	}

	/* unlink, shutdown, unplug, other nasties */
	if (urb->status != 0) {
		FUNC0("kingsun_send_irq: urb asynchronously failed - %d",
		    urb->status);
	}
	FUNC2(netdev);
}