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
struct v4l2_vbi_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int std; } ;

/* Variables and functions */
 int V4L2_STD_525_60 ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int) ; 
 struct cx25840_state* FUNC2 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

int FUNC4(struct v4l2_subdev *sd, struct v4l2_vbi_format *fmt)
{
	struct i2c_client *client = FUNC3(sd);
	struct cx25840_state *state = FUNC2(sd);
	int is_pal = !(state->std & V4L2_STD_525_60);
	int vbi_offset = is_pal ? 1 : 0;

	/* Setup standard */
	FUNC0(client);

	/* VBI Offset */
	FUNC1(client, 0x47f, vbi_offset);
	FUNC1(client, 0x404, 0x2e);
	return 0;
}