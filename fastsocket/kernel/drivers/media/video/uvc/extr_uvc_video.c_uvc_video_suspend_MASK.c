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
struct uvc_streaming {int frozen; int /*<<< orphan*/  intfnum; TYPE_1__* dev; int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_streaming*,int /*<<< orphan*/ ) ; 

int FUNC3(struct uvc_streaming *stream)
{
	if (!FUNC1(&stream->queue))
		return 0;

	stream->frozen = 1;
	FUNC2(stream, 0);
	FUNC0(stream->dev->udev, stream->intfnum, 0);
	return 0;
}