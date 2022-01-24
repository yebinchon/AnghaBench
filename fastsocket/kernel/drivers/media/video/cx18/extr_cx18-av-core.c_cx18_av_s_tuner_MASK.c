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
typedef  int u8 ;
struct v4l2_tuner {int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {int audmode; scalar_t__ radio; } ;
struct cx18 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_TUNER_MODE_LANG1 132 
#define  V4L2_TUNER_MODE_LANG1_LANG2 131 
#define  V4L2_TUNER_MODE_LANG2 130 
#define  V4L2_TUNER_MODE_MONO 129 
#define  V4L2_TUNER_MODE_STEREO 128 
 int FUNC0 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int,int,int,int) ; 
 struct cx18_av_state* FUNC2 (struct v4l2_subdev*) ; 
 struct cx18* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
	struct cx18_av_state *state = FUNC2(sd);
	struct cx18 *cx = FUNC3(sd);
	u8 v;

	if (state->radio)
		return 0;

	v = FUNC0(cx, 0x809);
	v &= ~0xf;

	switch (vt->audmode) {
	case V4L2_TUNER_MODE_MONO:
		/* mono      -> mono
		   stereo    -> mono
		   bilingual -> lang1 */
		break;
	case V4L2_TUNER_MODE_STEREO:
	case V4L2_TUNER_MODE_LANG1:
		/* mono      -> mono
		   stereo    -> stereo
		   bilingual -> lang1 */
		v |= 0x4;
		break;
	case V4L2_TUNER_MODE_LANG1_LANG2:
		/* mono      -> mono
		   stereo    -> stereo
		   bilingual -> lang1/lang2 */
		v |= 0x7;
		break;
	case V4L2_TUNER_MODE_LANG2:
		/* mono      -> mono
		   stereo    -> stereo
		   bilingual -> lang2 */
		v |= 0x1;
		break;
	default:
		return -EINVAL;
	}
	FUNC1(cx, 0x809, v, v, 0xff);
	state->audmode = vt->audmode;
	return 0;
}