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
struct video_device_shadow {int /*<<< orphan*/ * lock; } ;
struct video_device {int /*<<< orphan*/  name; int /*<<< orphan*/  debug; int /*<<< orphan*/  release; int /*<<< orphan*/ * v4l2_dev; } ;
struct cx231xx {char* name; int /*<<< orphan*/  lock; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  video_debug ; 
 struct video_device* FUNC1 () ; 
 int /*<<< orphan*/  video_device_release ; 
 struct video_device_shadow* FUNC2 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct video_device*,struct cx231xx*) ; 

__attribute__((used)) static struct video_device *FUNC4(struct cx231xx *dev,
		const struct video_device
		*template, const char *type_name)
{
	struct video_device *vfd;
	struct video_device_shadow *shvfd;

	vfd = FUNC1();
	if (NULL == vfd)
		return NULL;

	shvfd = FUNC2(vfd);
	if (NULL == shvfd)
		return NULL;

	*vfd = *template;
	vfd->v4l2_dev = &dev->v4l2_dev;
	vfd->release = video_device_release;
	vfd->debug = video_debug;
	shvfd->lock = &dev->lock;

	FUNC0(vfd->name, sizeof(vfd->name), "%s %s", dev->name, type_name);

	FUNC3(vfd, dev);
	return vfd;
}