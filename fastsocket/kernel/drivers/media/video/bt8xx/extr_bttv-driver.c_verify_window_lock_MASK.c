#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int width; int height; unsigned int left; } ;
struct v4l2_window {int clipcount; int field; TYPE_5__ w; } ;
struct bttv_fh {TYPE_4__* ovfmt; int /*<<< orphan*/  do_crop; TYPE_3__* btv; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef  int __s32 ;
struct TYPE_9__ {int depth; } ;
struct TYPE_8__ {TYPE_2__* crop; } ;
struct TYPE_6__ {int height; } ;
struct TYPE_7__ {TYPE_1__ rect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int V4L2_FIELD_ANY ; 
#define  V4L2_FIELD_BOTTOM 130 
#define  V4L2_FIELD_INTERLACED 129 
#define  V4L2_FIELD_TOP 128 
 int FUNC1 (struct bttv_fh*,unsigned int*,int*,int,unsigned int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC2		(struct bttv_fh *               fh,
			 struct v4l2_window *           win,
			 int                            adjust_size,
			 int                            adjust_crop)
{
	enum v4l2_field field;
	unsigned int width_mask;
	int rc;

	if (win->w.width  < 48 || win->w.height < 32)
		return -EINVAL;
	if (win->clipcount > 2048)
		return -EINVAL;

	field = win->field;

	if (V4L2_FIELD_ANY == field) {
		__s32 height2;

		height2 = fh->btv->crop[!!fh->do_crop].rect.height >> 1;
		field = (win->w.height > height2)
			? V4L2_FIELD_INTERLACED
			: V4L2_FIELD_TOP;
	}
	switch (field) {
	case V4L2_FIELD_TOP:
	case V4L2_FIELD_BOTTOM:
	case V4L2_FIELD_INTERLACED:
		break;
	default:
		return -EINVAL;
	}

	/* 4-byte alignment. */
	if (NULL == fh->ovfmt)
		return -EINVAL;
	width_mask = ~0;
	switch (fh->ovfmt->depth) {
	case 8:
	case 24:
		width_mask = ~3;
		break;
	case 16:
		width_mask = ~1;
		break;
	case 32:
		break;
	default:
		FUNC0();
	}

	win->w.width -= win->w.left & ~width_mask;
	win->w.left = (win->w.left - width_mask - 1) & width_mask;

	rc = FUNC1(fh, &win->w.width, &win->w.height,
			       field, width_mask,
			       /* width_bias: round down */ 0,
			       adjust_size, adjust_crop);
	if (0 != rc)
		return rc;

	win->field = field;
	return 0;
}