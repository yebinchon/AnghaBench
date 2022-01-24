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
struct video_data {struct front_face* front; scalar_t__ is_streaming; } ;
struct vbi_data {struct front_face* front; } ;
struct poseidon {int /*<<< orphan*/  lock; struct vbi_data vbi_data; struct video_data video_data; } ;
struct front_face {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct video_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct video_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct poseidon *pd)
{
	struct video_data *video = &pd->video_data;
	struct vbi_data *vbi	= &pd->vbi_data;

	FUNC1(&pd->lock);
	if (video->is_streaming) {
		struct front_face *front = video->front;

		/* stop the URBs */
		FUNC3(video);
		FUNC0(video);

		/* stop the host side of VIDEO */
		FUNC5(&front->q);
		FUNC4(&front->q);

		/* stop the host side of VBI */
		front = vbi->front;
		if (front) {
			FUNC5(&front->q);
			FUNC4(&front->q);
		}
	}
	FUNC2(&pd->lock);
	return 0;
}