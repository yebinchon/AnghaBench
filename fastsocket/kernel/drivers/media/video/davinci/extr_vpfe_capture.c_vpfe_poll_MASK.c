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
struct vpfe_device {int /*<<< orphan*/  buffer_queue; scalar_t__ started; int /*<<< orphan*/  v4l2_dev; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC1 (struct file*) ; 
 unsigned int FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *file, poll_table *wait)
{
	struct vpfe_device *vpfe_dev = FUNC1(file);

	FUNC0(1, debug, &vpfe_dev->v4l2_dev, "vpfe_poll\n");

	if (vpfe_dev->started)
		return FUNC2(file,
					    &vpfe_dev->buffer_queue, wait);
	return 0;
}