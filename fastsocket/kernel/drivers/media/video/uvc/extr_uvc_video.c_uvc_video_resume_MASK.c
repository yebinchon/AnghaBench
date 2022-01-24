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
struct uvc_streaming {int /*<<< orphan*/  queue; int /*<<< orphan*/  ctrl; scalar_t__ frozen; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC0 (struct uvc_streaming*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct uvc_streaming*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct uvc_streaming *stream)
{
	int ret;

	stream->frozen = 0;

	ret = FUNC0(stream, &stream->ctrl);
	if (ret < 0) {
		FUNC2(&stream->queue, 0);
		return ret;
	}

	if (!FUNC3(&stream->queue))
		return 0;

	ret = FUNC1(stream, GFP_NOIO);
	if (ret < 0)
		FUNC2(&stream->queue, 0);

	return ret;
}