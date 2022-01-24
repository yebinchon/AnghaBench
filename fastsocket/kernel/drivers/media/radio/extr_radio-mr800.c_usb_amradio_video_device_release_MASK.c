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
struct amradio_device {struct amradio_device* buffer; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amradio_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct video_device*) ; 
 struct amradio_device* FUNC3 (struct video_device*) ; 

__attribute__((used)) static void FUNC4(struct video_device *videodev)
{
	struct amradio_device *radio = FUNC3(videodev);

	/* we call v4l to free radio->videodev */
	FUNC2(videodev);

	FUNC1(&radio->v4l2_dev);

	/* free rest memory */
	FUNC0(radio->buffer);
	FUNC0(radio);
}