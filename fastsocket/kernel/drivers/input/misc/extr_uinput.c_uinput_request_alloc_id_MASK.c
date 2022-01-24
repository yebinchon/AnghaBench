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
struct uinput_request {int id; } ;
struct uinput_device {int /*<<< orphan*/  requests_lock; struct uinput_request** requests; } ;

/* Variables and functions */
 int UINPUT_NUM_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct uinput_device *udev, struct uinput_request *request)
{
	int id;
	int err = -1;

	FUNC0(&udev->requests_lock);

	for (id = 0; id < UINPUT_NUM_REQUESTS; id++) {
		if (!udev->requests[id]) {
			request->id = id;
			udev->requests[id] = request;
			err = 0;
			break;
		}
	}

	FUNC1(&udev->requests_lock);
	return err;
}