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
struct v4l2_sliced_vbi_cap {scalar_t__ type; int** service_lines; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int v4l2_cap; scalar_t__ is_60hz; scalar_t__ is_50hz; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_SLICED_VBI_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_SLICED_VBI_OUTPUT ; 
 int V4L2_CAP_SLICED_VBI_OUTPUT ; 
 void* V4L2_SLICED_CAPTION_525 ; 
 int V4L2_SLICED_VBI_525 ; 
 int V4L2_SLICED_VBI_625 ; 
 int V4L2_SLICED_VPS ; 
 int V4L2_SLICED_WSS_625 ; 
 scalar_t__ FUNC0 (int,int,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *fh, struct v4l2_sliced_vbi_cap *cap)
{
	struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;
	int set = itv->is_50hz ? V4L2_SLICED_VBI_625 : V4L2_SLICED_VBI_525;
	int f, l;

	if (cap->type == V4L2_BUF_TYPE_SLICED_VBI_CAPTURE) {
		for (f = 0; f < 2; f++) {
			for (l = 0; l < 24; l++) {
				if (FUNC0(f, l, itv->is_50hz))
					cap->service_lines[f][l] = set;
			}
		}
		return 0;
	}
	if (cap->type == V4L2_BUF_TYPE_SLICED_VBI_OUTPUT) {
		if (!(itv->v4l2_cap & V4L2_CAP_SLICED_VBI_OUTPUT))
			return -EINVAL;
		if (itv->is_60hz) {
			cap->service_lines[0][21] = V4L2_SLICED_CAPTION_525;
			cap->service_lines[1][21] = V4L2_SLICED_CAPTION_525;
		} else {
			cap->service_lines[0][23] = V4L2_SLICED_WSS_625;
			cap->service_lines[0][16] = V4L2_SLICED_VPS;
		}
		return 0;
	}
	return -EINVAL;
}