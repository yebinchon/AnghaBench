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
struct bcm5974 {int /*<<< orphan*/  bt_urb; int /*<<< orphan*/  tp_urb; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct bcm5974*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bcm5974 *dev)
{
	if (FUNC0(dev, true)) {
		FUNC1(1, "bcm5974: mode switch failed\n");
		goto error;
	}

	if (FUNC3(dev->bt_urb, GFP_KERNEL))
		goto error;

	if (FUNC3(dev->tp_urb, GFP_KERNEL))
		goto err_kill_bt;

	return 0;

err_kill_bt:
	FUNC2(dev->bt_urb);
error:
	return -EIO;
}