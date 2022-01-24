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
struct if_usb_card {int /*<<< orphan*/ * ep_out_buf; int /*<<< orphan*/ * rx_urb; int /*<<< orphan*/ * tx_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct if_usb_card *cardp)
{
	FUNC1(LBS_DEB_USB);

	/* Unlink tx & rx urb */
	FUNC4(cardp->tx_urb);
	FUNC4(cardp->rx_urb);

	FUNC3(cardp->tx_urb);
	cardp->tx_urb = NULL;

	FUNC3(cardp->rx_urb);
	cardp->rx_urb = NULL;

	FUNC0(cardp->ep_out_buf);
	cardp->ep_out_buf = NULL;

	FUNC2(LBS_DEB_USB);
}