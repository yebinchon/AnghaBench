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
struct usb_ov511 {scalar_t__ bridge; scalar_t__ bclass; } ;

/* Variables and functions */
 scalar_t__ BCL_OV518 ; 
 scalar_t__ BRG_OV511PLUS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  R511_SYS_LED_CTL ; 
 int /*<<< orphan*/  R518_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ov511*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ov511*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(struct usb_ov511 *ov, int enable)
{
	FUNC0(4, " (%s)", enable ? "turn on" : "turn off");

	if (ov->bridge == BRG_OV511PLUS)
		FUNC1(ov, R511_SYS_LED_CTL, enable ? 1 : 0);
	else if (ov->bclass == BCL_OV518)
		FUNC2(ov, R518_GPIO_OUT, enable ? 0x02 : 0x00, 0x02);

	return;
}