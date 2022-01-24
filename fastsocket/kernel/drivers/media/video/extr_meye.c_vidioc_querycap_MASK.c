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
struct v4l2_capability {int capabilities; scalar_t__ version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mchip_dev; } ;

/* Variables and functions */
 int MEYE_DRIVER_MAJORVERSION ; 
 scalar_t__ MEYE_DRIVER_MINORVERSION ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 TYPE_1__ meye ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
				struct v4l2_capability *cap)
{
	FUNC2(cap->driver, "meye");
	FUNC2(cap->card, "meye");
	FUNC1(cap->bus_info, "PCI:%s", FUNC0(meye.mchip_dev));

	cap->version = (MEYE_DRIVER_MAJORVERSION << 8) +
		       MEYE_DRIVER_MINORVERSION;

	cap->capabilities = V4L2_CAP_VIDEO_CAPTURE |
			    V4L2_CAP_STREAMING;

	return 0;
}