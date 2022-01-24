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
struct zd_usb {int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_usb*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct zd_usb *usb)
{
	FUNC2(usb->intf, NULL);
	FUNC1(usb->intf);
	FUNC0(usb, sizeof(*usb));
	/* FIXME: usb_interrupt, usb_tx, usb_rx? */
}