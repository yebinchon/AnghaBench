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
struct uvc_device {int /*<<< orphan*/ * int_urb; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct uvc_device *dev)
{
	if (dev->int_urb == NULL || FUNC0(&dev->users) == 0)
		return 0;

	return FUNC1(dev->int_urb, GFP_NOIO);
}