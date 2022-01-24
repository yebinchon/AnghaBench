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
struct v4l2_queryctrl {int id; } ;
struct fmr2 {int card_type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int FUNC0 (struct v4l2_queryctrl*,int /*<<< orphan*/ ,int,int,int) ; 
 struct fmr2* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
					struct v4l2_queryctrl *qc)
{
	struct fmr2 *fmr2 = FUNC1(file);

	switch (qc->id) {
	case V4L2_CID_AUDIO_MUTE:
		return FUNC0(qc, 0, 1, 1, 1);
	case V4L2_CID_AUDIO_VOLUME:
		/* Only card_type == 11 implements volume */
		if (fmr2->card_type == 11)
			return FUNC0(qc, 0, 15, 1, 0);
		return FUNC0(qc, 0, 1, 1, 0);
	}
	return -EINVAL;
}