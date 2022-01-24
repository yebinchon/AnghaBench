#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct si470x_device {int users; int int_in_running; TYPE_2__* intf; int /*<<< orphan*/  int_in_urb; TYPE_1__* int_in_endpoint; int /*<<< orphan*/  int_in_buffer; int /*<<< orphan*/  usbdev; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  si470x_int_in_callback ; 
 int FUNC4 (struct si470x_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct si470x_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct si470x_device* FUNC11 (struct file*) ; 

__attribute__((used)) static int FUNC12(struct file *file)
{
	struct si470x_device *radio = FUNC11(file);
	int retval;

	FUNC2();
	radio->users++;

	retval = FUNC6(radio->intf);
	if (retval < 0) {
		radio->users--;
		retval = -EIO;
		goto done;
	}

	if (radio->users == 1) {
		/* start radio */
		retval = FUNC4(radio);
		if (retval < 0) {
			FUNC7(radio->intf);
			goto done;
		}

		/* initialize interrupt urb */
		FUNC8(radio->int_in_urb, radio->usbdev,
			FUNC9(radio->usbdev,
			radio->int_in_endpoint->bEndpointAddress),
			radio->int_in_buffer,
			FUNC1(radio->int_in_endpoint->wMaxPacketSize),
			si470x_int_in_callback,
			radio,
			radio->int_in_endpoint->bInterval);

		radio->int_in_running = 1;
		FUNC3();

		retval = FUNC10(radio->int_in_urb, GFP_KERNEL);
		if (retval) {
			FUNC0(&radio->intf->dev,
				 "submitting int urb failed (%d)\n", retval);
			radio->int_in_running = 0;
			FUNC7(radio->intf);
		}
	}

done:
	FUNC5();
	return retval;
}