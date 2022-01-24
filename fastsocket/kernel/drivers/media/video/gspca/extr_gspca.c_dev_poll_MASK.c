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
struct gspca_dev {scalar_t__ memory; scalar_t__ fr_o; int /*<<< orphan*/  present; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  fr_i; int /*<<< orphan*/  wq; } ;
struct file {struct gspca_dev* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int /*<<< orphan*/  D_FRAM ; 
 scalar_t__ GSPCA_MEMORY_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct gspca_dev*,struct file*) ; 

__attribute__((used)) static unsigned int FUNC6(struct file *file, poll_table *wait)
{
	struct gspca_dev *gspca_dev = file->private_data;
	int ret;

	FUNC0(D_FRAM, "poll");

	FUNC4(file, &gspca_dev->wq, wait);

	/* if reqbufs is not done, the user would use read() */
	if (gspca_dev->memory == GSPCA_MEMORY_NO) {
		ret = FUNC5(gspca_dev, file);
		if (ret != 0)
			return POLLERR;
	}

	if (FUNC2(&gspca_dev->queue_lock) != 0)
		return POLLERR;

	/* check if an image has been received */
	if (gspca_dev->fr_o != FUNC1(&gspca_dev->fr_i))
		ret = POLLIN | POLLRDNORM;	/* yes */
	else
		ret = 0;
	FUNC3(&gspca_dev->queue_lock);
	if (!gspca_dev->present)
		return POLLHUP;
	return ret;
}