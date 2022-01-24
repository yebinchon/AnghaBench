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
struct video_data {int /*<<< orphan*/ * v_dev; } ;
struct vbi_data {int /*<<< orphan*/ * v_dev; } ;
struct poseidon {struct vbi_data vbi_data; struct video_data video_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  VFL_TYPE_VBI ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct poseidon*) ; 
 int /*<<< orphan*/  pd_video_template ; 
 void* FUNC2 (struct poseidon*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct poseidon *pd)
{
	struct video_data *video = &pd->video_data;
	struct vbi_data *vbi	= &pd->vbi_data;
	int ret = -ENOMEM;

	video->v_dev = FUNC2(pd, &pd_video_template);
	if (video->v_dev == NULL)
		goto out;

	ret = FUNC3(video->v_dev, VFL_TYPE_GRABBER, -1);
	if (ret != 0)
		goto out;

	/* VBI uses the same template as video */
	vbi->v_dev = FUNC2(pd, &pd_video_template);
	if (vbi->v_dev == NULL) {
		ret = -ENOMEM;
		goto out;
	}
	ret = FUNC3(vbi->v_dev, VFL_TYPE_VBI, -1);
	if (ret != 0)
		goto out;
	FUNC0("register VIDEO/VBI devices");
	return 0;
out:
	FUNC0("VIDEO/VBI devices register failed, : %d", ret);
	FUNC1(pd);
	return ret;
}