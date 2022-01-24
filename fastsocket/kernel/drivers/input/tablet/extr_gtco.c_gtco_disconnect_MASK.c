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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct gtco {int /*<<< orphan*/  buf_dma; int /*<<< orphan*/  buffer; int /*<<< orphan*/  usbdev; int /*<<< orphan*/  urbinfo; int /*<<< orphan*/  inputdevice; } ;

/* Variables and functions */
 int /*<<< orphan*/  REPORT_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gtco*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct gtco* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *interface)
{
	/* Grab private device ptr */
	struct gtco *gtco = FUNC5(interface);

	/* Now reverse all the registration stuff */
	if (gtco) {
		FUNC1(gtco->inputdevice);
		FUNC6(gtco->urbinfo);
		FUNC4(gtco->urbinfo);
		FUNC3(gtco->usbdev, REPORT_MAX_SIZE,
				gtco->buffer, gtco->buf_dma);
		FUNC2(gtco);
	}

	FUNC0(&interface->dev, "gtco driver disconnected\n");
}