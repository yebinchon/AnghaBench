#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uvc_streaming {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  queue; int /*<<< orphan*/  intfnum; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uvc_streaming*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct uvc_streaming*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uvc_streaming*,int) ; 

int FUNC5(struct uvc_streaming *stream, int enable)
{
	int ret;

	if (!enable) {
		FUNC4(stream, 1);
		FUNC0(stream->dev->udev, stream->intfnum, 0);
		FUNC3(&stream->queue, 0);
		return 0;
	}

	ret = FUNC3(&stream->queue, 1);
	if (ret < 0)
		return ret;

	/* Commit the streaming parameters. */
	ret = FUNC1(stream, &stream->ctrl);
	if (ret < 0)
		return ret;

	return FUNC2(stream, GFP_KERNEL);
}