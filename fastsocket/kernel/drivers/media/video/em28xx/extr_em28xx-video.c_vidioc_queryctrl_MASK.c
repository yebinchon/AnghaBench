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
struct v4l2_queryctrl {int id; scalar_t__ type; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_2__ {scalar_t__ ac97; } ;
struct em28xx {int /*<<< orphan*/  v4l2_dev; TYPE_1__ audio_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ EM28XX_NO_AC97 ; 
 int FUNC0 (struct v4l2_queryctrl*) ; 
 int FUNC1 (struct em28xx*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_queryctrl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  queryctrl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_queryctrl*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
				struct v4l2_queryctrl *qc)
{
	struct em28xx_fh      *fh  = priv;
	struct em28xx         *dev = fh->dev;
	int                   id  = qc->id;
	int                   rc;

	rc = FUNC1(dev);
	if (rc < 0)
		return rc;

	FUNC2(qc, 0, sizeof(*qc));

	qc->id = id;

	/* enumerate AC97 controls */
	if (dev->audio_mode.ac97 != EM28XX_NO_AC97) {
		rc = FUNC0(qc);
		if (!rc)
			return 0;
	}

	/* enumerate V4L2 device controls */
	FUNC3(&dev->v4l2_dev, 0, core, queryctrl, qc);

	if (qc->type)
		return 0;
	else
		return -EINVAL;
}