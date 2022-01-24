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
struct file {int dummy; } ;
struct cx18_stream {struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  serialize_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (struct cx18*) ; 
 int FUNC2 (struct cx18_stream*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct video_device* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct video_device*) ; 
 struct cx18_stream* FUNC7 (struct video_device*) ; 

int FUNC8(struct file *filp)
{
	int res;
	struct video_device *video_dev = FUNC5(filp);
	struct cx18_stream *s = FUNC7(video_dev);
	struct cx18 *cx = s->cx;

	FUNC3(&cx->serialize_lock);
	if (FUNC1(cx)) {
		FUNC0("Failed to initialize on %s\n",
			 FUNC6(video_dev));
		FUNC4(&cx->serialize_lock);
		return -ENXIO;
	}
	res = FUNC2(s, filp);
	FUNC4(&cx->serialize_lock);
	return res;
}