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
struct usb_api_data {scalar_t__ done; int /*<<< orphan*/  wqh; } ;
struct urb {int status; int actual_length; TYPE_1__* dev; struct usb_api_data* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct urb *urb, int timeout, int* actual_length)
{
	struct usb_api_data awd;
        int status;

        FUNC1(&awd.wqh);
        awd.done = 0;

        urb->context = &awd;
        status = FUNC4(urb, GFP_NOIO);
        if (status) {
                // something went wrong
                FUNC2(urb);
                return status;
        }

	if (!FUNC5(awd.wqh, awd.done, timeout)) {
                // timeout
                FUNC0(&urb->dev->dev, "usb_control/bulk_msg: timeout\n");
                FUNC3(urb);  // remove urb safely
                status = -ETIMEDOUT;
        }
	else {
                status = urb->status;
	}

        if (actual_length) {
                *actual_length = urb->actual_length;
	}

        FUNC2(urb);
        return status;
}