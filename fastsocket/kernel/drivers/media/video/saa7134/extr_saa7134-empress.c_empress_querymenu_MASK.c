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
struct v4l2_querymenu {int /*<<< orphan*/  id; } ;
struct saa7134_dev {int dummy; } ;
struct file {struct saa7134_dev* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_CTRL_CLASS_MPEG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  querymenu ; 
 int FUNC1 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_querymenu*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
					struct v4l2_querymenu *c)
{
	struct saa7134_dev *dev = file->private_data;

	if (FUNC0(c->id) != V4L2_CTRL_CLASS_MPEG)
		return -EINVAL;
	return FUNC1(dev, core, querymenu, c);
}