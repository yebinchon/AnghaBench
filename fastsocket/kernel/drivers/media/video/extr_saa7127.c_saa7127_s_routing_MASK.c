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
typedef  scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa7127_state {scalar_t__ input_type; scalar_t__ output_type; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_subdev*,scalar_t__) ; 
 int FUNC1 (struct v4l2_subdev*,scalar_t__) ; 
 struct saa7127_state* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
			     u32 input, u32 output, u32 config)
{
	struct saa7127_state *state = FUNC2(sd);
	int rc = 0;

	if (state->input_type != input)
		rc = FUNC0(sd, input);
	if (rc == 0 && state->output_type != output)
		rc = FUNC1(sd, output);
	return rc;
}