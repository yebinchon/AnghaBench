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

/* Variables and functions */
 int /*<<< orphan*/  MX31_PIN_USBOTG_CLK ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA0 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA1 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA2 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA3 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA4 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA5 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA6 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DATA7 ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_DIR ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_NXT ; 
 int /*<<< orphan*/  MX31_PIN_USBOTG_STP ; 
 int /*<<< orphan*/  OTG_EN_B ; 
 int /*<<< orphan*/  USB_PAD_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC2(MX31_PIN_USBOTG_DATA0, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_DATA1, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_DATA2, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_DATA3, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_DATA4, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_DATA5, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_DATA6, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_DATA7, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_CLK, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_DIR, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_NXT, USB_PAD_CFG);
	FUNC2(MX31_PIN_USBOTG_STP, USB_PAD_CFG);

	FUNC1(OTG_EN_B, "usb-udc-en");
	FUNC0(OTG_EN_B, 0);
}