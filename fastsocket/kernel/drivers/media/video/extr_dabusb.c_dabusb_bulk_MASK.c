#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pdabusb_t ;
typedef  TYPE_2__* pbulk_transfer_t ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/  data; int /*<<< orphan*/  pipe; } ;
struct TYPE_10__ {TYPE_3__* usbdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPIPE ; 
 int /*<<< orphan*/  _DABUSB_IF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (TYPE_3__*,unsigned int,int /*<<< orphan*/ ,int,int*,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (TYPE_3__*,int) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC8 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC9 (pdabusb_t s, pbulk_transfer_t pb)
{
	int ret;
	unsigned int pipe;
	int actual_length;

	FUNC0("dabusb_bulk");

	if (!pb->pipe)
		pipe = FUNC6 (s->usbdev, 2);
	else
		pipe = FUNC8 (s->usbdev, 2);

	ret=FUNC3(s->usbdev, pipe, pb->data, pb->size, &actual_length, 100);
	if(ret<0) {
		FUNC1(&s->usbdev->dev,
			"usb_bulk_msg failed(%d)\n", ret);

		if (FUNC7 (s->usbdev, _DABUSB_IF, 1) < 0) {
			FUNC1(&s->usbdev->dev, "set_interface failed\n");
			return -EINVAL;
		}

	}

	if( ret == -EPIPE ) {
		FUNC2(&s->usbdev->dev, "CLEAR_FEATURE request to remove STALL condition.\n");
		if(FUNC4(s->usbdev, FUNC5(pipe)))
			FUNC1(&s->usbdev->dev, "request failed\n");
	}

	pb->size = actual_length;
	return ret;
}