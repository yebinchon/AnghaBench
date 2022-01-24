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
struct inode {int dummy; } ;
struct imon_context {int display_isopen; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_present_intf0; int /*<<< orphan*/  dev; int /*<<< orphan*/  display_supported; } ;
struct file {struct imon_context* private_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct imon_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct imon_context *ictx = NULL;
	int retval = 0;

	ictx = file->private_data;

	if (!ictx) {
		FUNC4("no context for device\n");
		return -ENODEV;
	}

	FUNC2(&ictx->lock);

	if (!ictx->display_supported) {
		FUNC4("display not supported by device\n");
		retval = -ENODEV;
	} else if (!ictx->display_isopen) {
		FUNC4("display is not open\n");
		retval = -EIO;
	} else {
		ictx->display_isopen = false;
		FUNC0(ictx->dev, "display port closed\n");
		if (!ictx->dev_present_intf0) {
			/*
			 * Device disconnected before close and IR port is not
			 * open. If IR port is open, context will be deleted by
			 * ir_close.
			 */
			FUNC3(&ictx->lock);
			FUNC1(ictx);
			return retval;
		}
	}

	FUNC3(&ictx->lock);
	return retval;
}