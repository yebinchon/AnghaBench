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
struct dsbr100_device {struct dsbr100_device* transfer_buffer; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsbr100_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dsbr100_device* FUNC2 (struct video_device*) ; 

__attribute__((used)) static void FUNC3(struct video_device *videodev)
{
	struct dsbr100_device *radio = FUNC2(videodev);

	FUNC1(&radio->v4l2_dev);
	FUNC0(radio->transfer_buffer);
	FUNC0(radio);
}