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
struct TYPE_3__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_4__ {int /*<<< orphan*/ * cam_mode; } ;
struct gspca_dev {int curr_mode; TYPE_2__ cam; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
			    struct v4l2_format *fmt)
{
	struct gspca_dev *gspca_dev = priv;
	int mode;

	mode = gspca_dev->curr_mode;
	FUNC0(&fmt->fmt.pix, &gspca_dev->cam.cam_mode[mode],
		sizeof fmt->fmt.pix);
	return 0;
}