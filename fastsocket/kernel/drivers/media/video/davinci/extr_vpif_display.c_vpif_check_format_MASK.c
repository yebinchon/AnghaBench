#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct v4l2_pix_format {int field; scalar_t__ pixelformat; scalar_t__ bytesperline; int sizeimage; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_10__ {TYPE_3__ pix; } ;
struct TYPE_11__ {TYPE_4__ fmt; } ;
struct common_obj {scalar_t__ memory; TYPE_5__ fmt; } ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_8__ {TYPE_1__ std_info; } ;
struct channel_obj {size_t channel_id; TYPE_2__ vpifparams; struct common_obj* common; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_12__ {int* channel_bufsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ V4L2_MEMORY_USERPTR ; 
 scalar_t__ V4L2_PIX_FMT_YUV422P ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t VPIF_VIDEO_INDEX ; 
 TYPE_6__ config_params ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct channel_obj*) ; 

__attribute__((used)) static int FUNC4(struct channel_obj *ch,
			     struct v4l2_pix_format *pixfmt)
{
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
	enum v4l2_field field = pixfmt->field;
	u32 sizeimage, hpitch, vpitch;

	if (pixfmt->pixelformat != V4L2_PIX_FMT_YUV422P)
		goto invalid_fmt_exit;

	if (!(FUNC1(field)))
		goto invalid_fmt_exit;

	if (pixfmt->bytesperline <= 0)
		goto invalid_pitch_exit;

	if (V4L2_MEMORY_USERPTR == common->memory)
		sizeimage = pixfmt->sizeimage;
	else
		sizeimage = config_params.channel_bufsize[ch->channel_id];

	if (FUNC3(ch)) {
		FUNC2("Error getting the standard info\n");
		return -EINVAL;
	}

	hpitch = pixfmt->bytesperline;
	vpitch = sizeimage / (hpitch * 2);

	/* Check for valid value of pitch */
	if ((hpitch < ch->vpifparams.std_info.width) ||
	    (vpitch < ch->vpifparams.std_info.height))
		goto invalid_pitch_exit;

	/* Check for 8 byte alignment */
	if (!FUNC0(hpitch)) {
		FUNC2("invalid pitch alignment\n");
		return -EINVAL;
	}
	pixfmt->width = common->fmt.fmt.pix.width;
	pixfmt->height = common->fmt.fmt.pix.height;

	return 0;

invalid_fmt_exit:
	FUNC2("invalid field format\n");
	return -EINVAL;

invalid_pitch_exit:
	FUNC2("invalid pitch\n");
	return -EINVAL;
}