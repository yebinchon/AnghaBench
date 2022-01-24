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
struct hso_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  usb; scalar_t__ usb_gone; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *data, bool blocked)
{
	struct hso_device *hso_dev = data;
	int enabled = !blocked;
	int rv;

	FUNC0(&hso_dev->mutex);
	if (hso_dev->usb_gone)
		rv = 0;
	else
		rv = FUNC2(hso_dev->usb, FUNC3(hso_dev->usb, 0),
				       enabled ? 0x82 : 0x81, 0x40, 0, 0, NULL, 0,
				       USB_CTRL_SET_TIMEOUT);
	FUNC1(&hso_dev->mutex);
	return rv;
}