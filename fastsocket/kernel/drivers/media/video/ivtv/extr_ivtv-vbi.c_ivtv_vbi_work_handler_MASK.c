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
struct vbi_info {int wss_missing_cnt; int cc_missing_cnt; int wss_payload; scalar_t__ cc_payload_idx; struct vbi_cc* cc_payload; } ;
struct vbi_cc {int* odd; int* even; } ;
struct v4l2_sliced_vbi_data {int field; int* data; int /*<<< orphan*/  id; } ;
struct ivtv {scalar_t__ output_mode; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  sd_video; scalar_t__ is_50hz; struct vbi_info vbi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IVTV_F_I_UPDATE_CC ; 
 int /*<<< orphan*/  IVTV_F_I_UPDATE_VPS ; 
 int /*<<< orphan*/  IVTV_F_I_UPDATE_WSS ; 
 scalar_t__ OUT_PASSTHROUGH ; 
 int /*<<< orphan*/  V4L2_SLICED_CAPTION_525 ; 
 int /*<<< orphan*/  V4L2_SLICED_WSS_625 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_vbi_data ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*,int,struct vbi_cc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vbi_cc*,struct vbi_cc*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_sliced_vbi_data*) ; 
 int /*<<< orphan*/  vbi ; 

void FUNC8(struct ivtv *itv)
{
	struct vbi_info *vi = &itv->vbi;
	struct v4l2_sliced_vbi_data data;
	struct vbi_cc cc = { .odd = { 0x80, 0x80 }, .even = { 0x80, 0x80 } };

	/* Lock */
	if (itv->output_mode == OUT_PASSTHROUGH) {
		if (itv->is_50hz) {
			data.id = V4L2_SLICED_WSS_625;
			data.field = 0;

			if (FUNC7(itv->sd_video, vbi, g_vbi_data, &data) == 0) {
				FUNC3(itv, 1, data.data[0] & 0xf);
				vi->wss_missing_cnt = 0;
			} else if (vi->wss_missing_cnt == 4) {
				FUNC3(itv, 1, 0x8);  /* 4x3 full format */
			} else {
				vi->wss_missing_cnt++;
			}
		}
		else {
			int mode = 0;

			data.id = V4L2_SLICED_CAPTION_525;
			data.field = 0;
			if (FUNC7(itv->sd_video, vbi, g_vbi_data, &data) == 0) {
				mode |= 1;
				cc.odd[0] = data.data[0];
				cc.odd[1] = data.data[1];
			}
			data.field = 1;
			if (FUNC7(itv->sd_video, vbi, g_vbi_data, &data) == 0) {
				mode |= 2;
				cc.even[0] = data.data[0];
				cc.even[1] = data.data[1];
			}
			if (mode) {
				vi->cc_missing_cnt = 0;
				FUNC1(itv, mode, &cc);
			} else if (vi->cc_missing_cnt == 4) {
				FUNC1(itv, 0, &cc);
			} else {
				vi->cc_missing_cnt++;
			}
		}
		return;
	}

	if (FUNC5(IVTV_F_I_UPDATE_WSS, &itv->i_flags)) {
		FUNC3(itv, 1, vi->wss_payload & 0xf);
	}

	if (FUNC6(IVTV_F_I_UPDATE_CC, &itv->i_flags)) {
		if (vi->cc_payload_idx == 0) {
			FUNC0(IVTV_F_I_UPDATE_CC, &itv->i_flags);
			FUNC1(itv, 3, &cc);
		}
		while (vi->cc_payload_idx) {
			cc = vi->cc_payload[0];

			FUNC4(vi->cc_payload, vi->cc_payload + 1,
					sizeof(vi->cc_payload) - sizeof(vi->cc_payload[0]));
			vi->cc_payload_idx--;
			if (vi->cc_payload_idx && cc.odd[0] == 0x80 && cc.odd[1] == 0x80)
				continue;

			FUNC1(itv, 3, &cc);
			break;
		}
	}

	if (FUNC5(IVTV_F_I_UPDATE_VPS, &itv->i_flags)) {
		FUNC2(itv, 1);
	}
}