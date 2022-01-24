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
struct video_device {int dummy; } ;
struct ivtv_stream {struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  serialize_lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ivtv*) ; 
 int FUNC2 (struct ivtv_stream*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct video_device* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct video_device*) ; 
 struct ivtv_stream* FUNC7 (struct video_device*) ; 

int FUNC8(struct file *filp)
{
	int res;
	struct ivtv *itv = NULL;
	struct ivtv_stream *s = NULL;
	struct video_device *vdev = FUNC5(filp);

	s = FUNC7(vdev);
	itv = s->itv;

	FUNC3(&itv->serialize_lock);
	if (FUNC1(itv)) {
		FUNC0("Failed to initialize on device %s\n",
			 FUNC6(vdev));
		FUNC4(&itv->serialize_lock);
		return -ENXIO;
	}
	res = FUNC2(s, filp);
	FUNC4(&itv->serialize_lock);
	return res;
}