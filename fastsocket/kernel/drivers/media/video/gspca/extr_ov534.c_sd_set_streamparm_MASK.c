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
struct v4l2_fract {int denominator; int numerator; } ;
struct v4l2_captureparm {struct v4l2_fract timeperframe; } ;
struct TYPE_2__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_1__ parm; } ;
struct sd {int frame_rate; } ;
struct gspca_dev {scalar_t__ streaming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC1(struct gspca_dev *gspca_dev,
			     struct v4l2_streamparm *parm)
{
	struct v4l2_captureparm *cp = &parm->parm.capture;
	struct v4l2_fract *tpf = &cp->timeperframe;
	struct sd *sd = (struct sd *) gspca_dev;

	/* Set requested framerate */
	sd->frame_rate = tpf->denominator / tpf->numerator;
	if (gspca_dev->streaming)
		FUNC0(gspca_dev);

	/* Return the actual framerate */
	tpf->numerator = 1;
	tpf->denominator = sd->frame_rate;
}