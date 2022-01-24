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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct poseidon {int /*<<< orphan*/  udev; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int V4L2_CAP_AUDIO ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_TUNER ; 
 int V4L2_CAP_VBI_CAPTURE ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC1 (struct front_face*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *fh,
			struct v4l2_capability *cap)
{
	struct front_face *front = fh;
	struct poseidon *p = front->pd;

	FUNC1(front);

	FUNC2(cap->driver, "tele-video");
	FUNC2(cap->card, "Telegent Poseidon");
	FUNC3(p->udev, cap->bus_info, sizeof(cap->bus_info));
	cap->version = FUNC0(0, 0, 1);
	cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_TUNER |
				V4L2_CAP_AUDIO | V4L2_CAP_STREAMING |
				V4L2_CAP_READWRITE | V4L2_CAP_VBI_CAPTURE;
	return 0;
}