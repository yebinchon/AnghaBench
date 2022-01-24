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
struct usb_keyspan {int /*<<< orphan*/  in_dma; int /*<<< orphan*/  in_buffer; int /*<<< orphan*/  udev; int /*<<< orphan*/  irq_urb; int /*<<< orphan*/  input; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RECV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_keyspan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct usb_keyspan* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *interface)
{
	struct usb_keyspan *remote;

	remote = FUNC4(interface);
	FUNC6(interface, NULL);

	if (remote) {	/* We have a valid driver structure so clean up everything we allocated. */
		FUNC0(remote->input);
		FUNC5(remote->irq_urb);
		FUNC3(remote->irq_urb);
		FUNC2(remote->udev, RECV_SIZE, remote->in_buffer, remote->in_dma);
		FUNC1(remote);
	}
}