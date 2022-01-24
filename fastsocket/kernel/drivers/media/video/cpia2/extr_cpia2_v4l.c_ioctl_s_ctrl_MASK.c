#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_control {int id; scalar_t__ value; } ;
struct camera_data {int dummy; } ;
struct TYPE_8__ {int id; scalar_t__ minimum; scalar_t__ maximum; } ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {scalar_t__ value; } ;

/* Variables and functions */
#define  CPIA2_CID_FLICKER_MODE 139 
#define  CPIA2_CID_FRAMERATE 138 
#define  CPIA2_CID_GPIO 137 
#define  CPIA2_CID_LIGHTS 136 
#define  CPIA2_CID_RESET_CAMERA 135 
#define  CPIA2_CID_TARGET_KB 134 
#define  CPIA2_CID_USB_ALT 133 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__) ; 
 int EINVAL ; 
 int NUM_CONTROLS ; 
#define  V4L2_CID_BRIGHTNESS 132 
#define  V4L2_CID_CONTRAST 131 
#define  V4L2_CID_HFLIP 130 
#define  V4L2_CID_SATURATION 129 
#define  V4L2_CID_VFLIP 128 
 TYPE_4__* controls ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct camera_data*,scalar_t__) ; 
 int FUNC4 (struct camera_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct camera_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct camera_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct camera_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct camera_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct camera_data*,scalar_t__) ; 
 int FUNC10 (struct camera_data*,scalar_t__) ; 
 int FUNC11 (struct camera_data*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct camera_data*) ; 
 TYPE_3__* flicker_controls ; 
 TYPE_2__* framerate_controls ; 
 TYPE_1__* lights_controls ; 

__attribute__((used)) static int FUNC14(void *arg,struct camera_data *cam)
{
	struct v4l2_control *c = arg;
	int i;
	int retval = 0;

	FUNC0("Set control id:%d, value:%d\n", c->id, c->value);

	/* Check that the value is in range */
	for(i=0; i<NUM_CONTROLS; i++) {
		if(c->id == controls[i].id) {
			if(c->value < controls[i].minimum ||
			   c->value > controls[i].maximum) {
				return -EINVAL;
			}
			break;
		}
	}
	if(i == NUM_CONTROLS)
		return -EINVAL;

	switch(c->id) {
	case V4L2_CID_BRIGHTNESS:
		FUNC2(cam, c->value);
		break;
	case V4L2_CID_CONTRAST:
		FUNC3(cam, c->value);
		break;
	case V4L2_CID_SATURATION:
		FUNC9(cam, c->value);
		break;
	case V4L2_CID_HFLIP:
		FUNC8(cam, c->value);
		break;
	case V4L2_CID_VFLIP:
		FUNC7(cam, c->value);
		break;
	case CPIA2_CID_TARGET_KB:
		retval = FUNC10(cam, c->value);
		break;
	case CPIA2_CID_GPIO:
		retval = FUNC6(cam, c->value);
		break;
	case CPIA2_CID_FLICKER_MODE:
		retval = FUNC4(cam,
					      flicker_controls[c->value].value);
		break;
	case CPIA2_CID_FRAMERATE:
		retval = FUNC5(cam, framerate_controls[c->value].value);
		break;
	case CPIA2_CID_USB_ALT:
		retval = FUNC11(cam, c->value);
		break;
	case CPIA2_CID_LIGHTS:
		retval = FUNC6(cam, lights_controls[c->value].value);
		break;
	case CPIA2_CID_RESET_CAMERA:
		FUNC12(cam);
		FUNC1(cam);
		FUNC13(cam);
		break;
	default:
		retval = -EINVAL;
	}

	return retval;
}