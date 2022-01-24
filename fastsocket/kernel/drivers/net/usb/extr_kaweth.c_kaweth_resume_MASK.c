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
struct usb_interface {int dummy; } ;
struct kaweth_device {int /*<<< orphan*/  opened; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  KAWETH_STATUS_SUSPENDING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kaweth_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct kaweth_device* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct kaweth_device *kaweth = FUNC5(intf);
	unsigned long flags;

	FUNC0("Resuming device");
	FUNC3(&kaweth->device_lock, flags);
	kaweth->status &= ~KAWETH_STATUS_SUSPENDING;
	FUNC4(&kaweth->device_lock, flags);

	if (!kaweth->opened)
		return 0;
	FUNC2(kaweth, GFP_NOIO);
	FUNC1(kaweth, GFP_NOIO);

	return 0;
}