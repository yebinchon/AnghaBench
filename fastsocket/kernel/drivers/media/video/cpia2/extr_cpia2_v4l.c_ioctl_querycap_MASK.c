#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; struct v4l2_capability* bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct TYPE_5__ {int sensor_flags; } ;
struct TYPE_4__ {int product; int device_type; } ;
struct TYPE_6__ {TYPE_2__ version; TYPE_1__ pnp_id; } ;
struct camera_data {int /*<<< orphan*/  dev; TYPE_3__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA2_MAJ_VER ; 
 int /*<<< orphan*/  CPIA2_MIN_VER ; 
 int /*<<< orphan*/  CPIA2_PATCH_VER ; 
#define  CPIA2_VP_SENSOR_FLAGS_404 134 
#define  CPIA2_VP_SENSOR_FLAGS_407 133 
#define  CPIA2_VP_SENSOR_FLAGS_409 132 
#define  CPIA2_VP_SENSOR_FLAGS_410 131 
#define  CPIA2_VP_SENSOR_FLAGS_500 130 
#define  DEVICE_STV_672 129 
#define  DEVICE_STV_676 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_capability*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct v4l2_capability*,int) ; 

__attribute__((used)) static int FUNC5(void *arg, struct camera_data *cam)
{
	struct v4l2_capability *vc = arg;

	FUNC1(vc, 0, sizeof(*vc));
	FUNC3(vc->driver, "cpia2");

	if (cam->params.pnp_id.product == 0x151)
		FUNC3(vc->card, "QX5 Microscope");
	else
		FUNC3(vc->card, "CPiA2 Camera");
	switch (cam->params.pnp_id.device_type) {
	case DEVICE_STV_672:
		FUNC2(vc->card, " (672/");
		break;
	case DEVICE_STV_676:
		FUNC2(vc->card, " (676/");
		break;
	default:
		FUNC2(vc->card, " (???/");
		break;
	}
	switch (cam->params.version.sensor_flags) {
	case CPIA2_VP_SENSOR_FLAGS_404:
		FUNC2(vc->card, "404)");
		break;
	case CPIA2_VP_SENSOR_FLAGS_407:
		FUNC2(vc->card, "407)");
		break;
	case CPIA2_VP_SENSOR_FLAGS_409:
		FUNC2(vc->card, "409)");
		break;
	case CPIA2_VP_SENSOR_FLAGS_410:
		FUNC2(vc->card, "410)");
		break;
	case CPIA2_VP_SENSOR_FLAGS_500:
		FUNC2(vc->card, "500)");
		break;
	default:
		FUNC2(vc->card, "???)");
		break;
	}

	if (FUNC4(cam->dev, vc->bus_info, sizeof(vc->bus_info)) <0)
		FUNC1(vc->bus_info,0, sizeof(vc->bus_info));

	vc->version = FUNC0(CPIA2_MAJ_VER, CPIA2_MIN_VER,
				     CPIA2_PATCH_VER);

	vc->capabilities = V4L2_CAP_VIDEO_CAPTURE |
			   V4L2_CAP_READWRITE |
			   V4L2_CAP_STREAMING;

	return 0;
}