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
struct uvc_streaming {struct uvc_device* dev; } ;
struct uvc_device {int /*<<< orphan*/  nstreams; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uvc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct video_device*) ; 
 struct uvc_streaming* FUNC3 (struct video_device*) ; 

__attribute__((used)) static void FUNC4(struct video_device *vdev)
{
	struct uvc_streaming *stream = FUNC3(vdev);
	struct uvc_device *dev = stream->dev;

	FUNC2(vdev);

	/* Decrement the registered streams count and delete the device when it
	 * reaches zero.
	 */
	if (FUNC0(&dev->nstreams))
		FUNC1(dev);
}