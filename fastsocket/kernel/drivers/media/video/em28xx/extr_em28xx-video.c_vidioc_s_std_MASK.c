#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {int /*<<< orphan*/  norm; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  vscale; int /*<<< orphan*/  hscale; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int FUNC0 (struct em28xx*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, v4l2_std_id *norm)
{
	struct em28xx_fh   *fh  = priv;
	struct em28xx      *dev = fh->dev;
	struct v4l2_format f;
	int                rc;

	rc = FUNC0(dev);
	if (rc < 0)
		return rc;

	dev->norm = *norm;

	/* Adjusts width/height, if needed */
	f.fmt.pix.width = dev->width;
	f.fmt.pix.height = dev->height;
	FUNC4(file, priv, &f);

	/* set new image size */
	dev->width = f.fmt.pix.width;
	dev->height = f.fmt.pix.height;
	FUNC2(dev, dev->width, dev->height, &dev->hscale, &dev->vscale);

	FUNC1(dev);
	FUNC3(&dev->v4l2_dev, 0, core, s_std, dev->norm);

	return 0;
}