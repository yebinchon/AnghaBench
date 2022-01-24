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
struct vpif_capture_config {char* card_name; } ;
struct v4l2_capability {int capabilities; int /*<<< orphan*/  card; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; int /*<<< orphan*/  version; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vpif_capture_config* platform_data; } ;

/* Variables and functions */
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VPIF_CAPTURE_VERSION_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* vpif_dev ; 

__attribute__((used)) static int FUNC1(struct file *file, void  *priv,
				struct v4l2_capability *cap)
{
	struct vpif_capture_config *config = vpif_dev->platform_data;

	cap->version = VPIF_CAPTURE_VERSION_CODE;
	cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
	FUNC0(cap->driver, "vpif capture", sizeof(cap->driver));
	FUNC0(cap->bus_info, "DM646x Platform", sizeof(cap->bus_info));
	FUNC0(cap->card, config->card_name, sizeof(cap->card));

	return 0;
}