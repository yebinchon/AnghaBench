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
struct gspca_dev {int /*<<< orphan*/  queue_lock; } ;
struct file {int dummy; } ;
typedef  enum v4l2_memory { ____Placeholder_v4l2_memory } v4l2_memory ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (struct gspca_dev*,struct file*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev, struct file *file,
			enum v4l2_memory memory)
{
	int ret;

	if (FUNC1(&gspca_dev->queue_lock))
		return -ERESTARTSYS;
	ret = FUNC0(gspca_dev, file, memory);
	FUNC2(&gspca_dev->queue_lock);
	return ret;
}