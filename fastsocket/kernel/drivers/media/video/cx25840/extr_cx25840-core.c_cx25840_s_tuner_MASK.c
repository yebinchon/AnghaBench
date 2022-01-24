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
struct v4l2_tuner {int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int audmode; scalar_t__ radio; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_TUNER_MODE_LANG1 132 
#define  V4L2_TUNER_MODE_LANG1_LANG2 131 
#define  V4L2_TUNER_MODE_LANG2 130 
#define  V4L2_TUNER_MODE_MONO 129 
#define  V4L2_TUNER_MODE_STEREO 128 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int,int) ; 
 scalar_t__ FUNC1 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC2 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
	struct cx25840_state *state = FUNC2(sd);
	struct i2c_client *client = FUNC3(sd);

	if (state->radio || FUNC1(state))
		return 0;

	switch (vt->audmode) {
		case V4L2_TUNER_MODE_MONO:
			/* mono      -> mono
			   stereo    -> mono
			   bilingual -> lang1 */
			FUNC0(client, 0x809, ~0xf, 0x00);
			break;
		case V4L2_TUNER_MODE_STEREO:
		case V4L2_TUNER_MODE_LANG1:
			/* mono      -> mono
			   stereo    -> stereo
			   bilingual -> lang1 */
			FUNC0(client, 0x809, ~0xf, 0x04);
			break;
		case V4L2_TUNER_MODE_LANG1_LANG2:
			/* mono      -> mono
			   stereo    -> stereo
			   bilingual -> lang1/lang2 */
			FUNC0(client, 0x809, ~0xf, 0x07);
			break;
		case V4L2_TUNER_MODE_LANG2:
			/* mono      -> mono
			   stereo    -> stereo
			   bilingual -> lang2 */
			FUNC0(client, 0x809, ~0xf, 0x01);
			break;
		default:
			return -EINVAL;
	}
	state->audmode = vt->audmode;
	return 0;
}