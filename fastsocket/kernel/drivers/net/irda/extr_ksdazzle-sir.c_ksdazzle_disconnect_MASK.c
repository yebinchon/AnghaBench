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
struct usb_interface {int dummy; } ;
struct ksdazzle_cb {int /*<<< orphan*/  netdev; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf_clear; int /*<<< orphan*/  speed_setuprequest; int /*<<< orphan*/ * rx_urb; int /*<<< orphan*/ * tx_urb; int /*<<< orphan*/ * speed_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ksdazzle_cb* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct ksdazzle_cb *kingsun = FUNC4(intf);

	if (!kingsun)
		return;

	FUNC2(kingsun->netdev);

	/* Mop up receive && transmit urb's */
	FUNC5(kingsun->speed_urb);
	FUNC3(kingsun->speed_urb);
	kingsun->speed_urb = NULL;

	FUNC5(kingsun->tx_urb);
	FUNC3(kingsun->tx_urb);
	kingsun->tx_urb = NULL;

	FUNC5(kingsun->rx_urb);
	FUNC3(kingsun->rx_urb);
	kingsun->rx_urb = NULL;

	FUNC1(kingsun->speed_setuprequest);
	FUNC1(kingsun->tx_buf_clear);
	FUNC1(kingsun->rx_buf);
	FUNC0(kingsun->netdev);

	FUNC6(intf, NULL);
}