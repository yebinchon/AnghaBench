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
struct gspca_dev {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  module; int /*<<< orphan*/  usb_lock; scalar_t__ usb_err; scalar_t__ streaming; struct file* capt_file; } ;
struct file {struct gspca_dev* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct gspca_dev *gspca_dev = file->private_data;

	FUNC0(D_STREAM, "[%s] close", current->comm);
	if (FUNC5(&gspca_dev->queue_lock))
		return -ERESTARTSYS;

	/* if the file did the capture, free the streaming resources */
	if (gspca_dev->capt_file == file) {
		if (gspca_dev->streaming) {
			FUNC4(&gspca_dev->usb_lock);
			gspca_dev->usb_err = 0;
			FUNC2(gspca_dev);
			FUNC6(&gspca_dev->usb_lock);
		}
		FUNC1(gspca_dev);
	}
	file->private_data = NULL;
	FUNC3(gspca_dev->module);
	FUNC6(&gspca_dev->queue_lock);

	FUNC0(D_STREAM, "close done");

	return 0;
}