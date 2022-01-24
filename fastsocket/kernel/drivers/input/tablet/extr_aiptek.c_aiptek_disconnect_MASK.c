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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;
struct aiptek {int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; int /*<<< orphan*/  urb; int /*<<< orphan*/  inputdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIPTEK_PACKET_LENGTH ; 
 int /*<<< orphan*/  aiptek_attribute_group ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct aiptek*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct aiptek* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct aiptek *aiptek = FUNC6(intf);

	/* Disassociate driver's struct with usb interface
	 */
	FUNC8(intf, NULL);
	if (aiptek != NULL) {
		/* Free & unhook everything from the system.
		 */
		FUNC7(aiptek->urb);
		FUNC0(aiptek->inputdev);
		FUNC3(&intf->dev.kobj, &aiptek_attribute_group);
		FUNC5(aiptek->urb);
		FUNC4(FUNC1(intf),
				AIPTEK_PACKET_LENGTH,
				aiptek->data, aiptek->data_dma);
		FUNC2(aiptek);
	}
}