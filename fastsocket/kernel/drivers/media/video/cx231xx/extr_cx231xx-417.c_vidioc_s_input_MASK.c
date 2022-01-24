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
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {unsigned int input; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, unsigned int i)
{
	struct cx231xx_fh  *fh  = file->private_data;
	struct cx231xx *dev = fh->dev;

	FUNC0(3, "enter vidioc_s_input() i=%d\n", i);

	FUNC1(&dev->lock);

	FUNC3(dev, i);

	FUNC2(&dev->lock);

	if (i >= 4)
		return -EINVAL;
	dev->input = i;
	FUNC0(3, "exit vidioc_s_input()\n");
	return 0;
}