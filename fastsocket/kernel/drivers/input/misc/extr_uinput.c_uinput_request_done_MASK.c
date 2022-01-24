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
struct uinput_request {size_t id; int /*<<< orphan*/  done; } ;
struct uinput_device {int /*<<< orphan*/  requests_waitq; int /*<<< orphan*/ ** requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct uinput_device *udev, struct uinput_request *request)
{
	/* Mark slot as available */
	udev->requests[request->id] = NULL;
	FUNC1(&udev->requests_waitq);

	FUNC0(&request->done);
}