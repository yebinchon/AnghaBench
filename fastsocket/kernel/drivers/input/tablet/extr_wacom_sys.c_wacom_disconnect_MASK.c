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
struct wacom {struct wacom* wacom_wac; int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WACOM_PKGLEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct wacom* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wacom*) ; 
 int /*<<< orphan*/  FUNC9 (struct wacom*) ; 

__attribute__((used)) static void FUNC10(struct usb_interface *intf)
{
	struct wacom *wacom = FUNC5(intf);

	FUNC7(intf, NULL);

	FUNC6(wacom->irq);
	FUNC0(wacom->dev);
	FUNC8(wacom);
	FUNC4(wacom->irq);
	FUNC3(FUNC1(intf), WACOM_PKGLEN_MAX,
			wacom->wacom_wac->data, wacom->data_dma);
	FUNC9(wacom->wacom_wac);
	FUNC2(wacom->wacom_wac);
	FUNC2(wacom);
}