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
struct file {int dummy; } ;

/* Variables and functions */
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VINO_VERSION_CODE ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_capability*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vino_bus_name ; 
 int /*<<< orphan*/  vino_driver_description ; 
 int /*<<< orphan*/  vino_driver_name ; 

__attribute__((used)) static int FUNC2(struct file *file, void *__fh,
		struct v4l2_capability *cap)
{
	FUNC0(cap, 0, sizeof(struct v4l2_capability));

	FUNC1(cap->driver, vino_driver_name);
	FUNC1(cap->card, vino_driver_description);
	FUNC1(cap->bus_info, vino_bus_name);
	cap->version = VINO_VERSION_CODE;
	cap->capabilities =
		V4L2_CAP_VIDEO_CAPTURE |
		V4L2_CAP_STREAMING;
	// V4L2_CAP_OVERLAY, V4L2_CAP_READWRITE
	return 0;
}