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
typedef  int /*<<< orphan*/  const u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_querymenu {int id; } ;
struct v4l2_queryctrl {int id; } ;
struct saa6752hs_state {int /*<<< orphan*/  has_ac3; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_MPEG_AUDIO_AC3_BITRATE 137 
#define  V4L2_CID_MPEG_AUDIO_ENCODING 136 
#define  V4L2_CID_MPEG_AUDIO_L2_BITRATE 135 
#define  V4L2_CTRL_MENU_IDS_END 134 
#define  V4L2_MPEG_AUDIO_AC3_BITRATE_256K 133 
#define  V4L2_MPEG_AUDIO_AC3_BITRATE_384K 132 
#define  V4L2_MPEG_AUDIO_ENCODING_AC3 131 
#define  V4L2_MPEG_AUDIO_ENCODING_LAYER_2 130 
#define  V4L2_MPEG_AUDIO_L2_BITRATE_256K 129 
#define  V4L2_MPEG_AUDIO_L2_BITRATE_384K 128 
 int FUNC0 (struct v4l2_subdev*,struct v4l2_queryctrl*) ; 
 struct saa6752hs_state* FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (struct v4l2_querymenu*,struct v4l2_queryctrl*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct v4l2_querymenu*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, struct v4l2_querymenu *qmenu)
{
	static const u32 mpeg_audio_encoding[] = {
		V4L2_MPEG_AUDIO_ENCODING_LAYER_2,
		V4L2_CTRL_MENU_IDS_END
	};
	static const u32 mpeg_audio_ac3_encoding[] = {
		V4L2_MPEG_AUDIO_ENCODING_LAYER_2,
		V4L2_MPEG_AUDIO_ENCODING_AC3,
		V4L2_CTRL_MENU_IDS_END
	};
	static u32 mpeg_audio_l2_bitrate[] = {
		V4L2_MPEG_AUDIO_L2_BITRATE_256K,
		V4L2_MPEG_AUDIO_L2_BITRATE_384K,
		V4L2_CTRL_MENU_IDS_END
	};
	static u32 mpeg_audio_ac3_bitrate[] = {
		V4L2_MPEG_AUDIO_AC3_BITRATE_256K,
		V4L2_MPEG_AUDIO_AC3_BITRATE_384K,
		V4L2_CTRL_MENU_IDS_END
	};
	struct saa6752hs_state *h = FUNC1(sd);
	struct v4l2_queryctrl qctrl;
	int err;

	qctrl.id = qmenu->id;
	err = FUNC0(sd, &qctrl);
	if (err)
		return err;
	switch (qmenu->id) {
	case V4L2_CID_MPEG_AUDIO_L2_BITRATE:
		return FUNC3(qmenu,
				mpeg_audio_l2_bitrate);
	case V4L2_CID_MPEG_AUDIO_AC3_BITRATE:
		if (!h->has_ac3)
			return -EINVAL;
		return FUNC3(qmenu,
				mpeg_audio_ac3_bitrate);
	case V4L2_CID_MPEG_AUDIO_ENCODING:
		return FUNC3(qmenu,
			h->has_ac3 ? mpeg_audio_ac3_encoding :
				mpeg_audio_encoding);
	}
	return FUNC2(qmenu, &qctrl, NULL);
}