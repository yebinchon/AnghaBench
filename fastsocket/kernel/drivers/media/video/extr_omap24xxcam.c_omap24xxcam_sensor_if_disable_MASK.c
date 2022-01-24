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
struct omap24xxcam_device {int if_type; } ;

/* Variables and functions */
#define  V4L2_IF_TYPE_BT656 128 
 int /*<<< orphan*/  FUNC0 (struct omap24xxcam_device const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const struct omap24xxcam_device *cam)
{
	switch (cam->if_type) {
	case V4L2_IF_TYPE_BT656:
		FUNC0(cam, 0);
		break;
	}
}