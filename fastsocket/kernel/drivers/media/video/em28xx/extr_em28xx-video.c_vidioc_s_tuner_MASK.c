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
struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct em28xx*) ; 
 int /*<<< orphan*/  s_tuner ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_tuner *t)
{
	struct em28xx_fh      *fh  = priv;
	struct em28xx         *dev = fh->dev;
	int                   rc;

	rc = FUNC0(dev);
	if (rc < 0)
		return rc;

	if (0 != t->index)
		return -EINVAL;

	FUNC1(&dev->v4l2_dev, 0, tuner, s_tuner, t);
	return 0;
}