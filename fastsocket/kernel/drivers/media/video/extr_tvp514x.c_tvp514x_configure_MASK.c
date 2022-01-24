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
struct v4l2_subdev {int dummy; } ;
struct tvp514x_decoder {int /*<<< orphan*/  tvp514x_regs; } ;

/* Variables and functions */
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
		struct tvp514x_decoder *decoder)
{
	int err;

	/* common register initialization */
	err =
	    FUNC1(sd, decoder->tvp514x_regs);
	if (err)
		return err;

	if (debug)
		FUNC0(sd);

	return 0;
}