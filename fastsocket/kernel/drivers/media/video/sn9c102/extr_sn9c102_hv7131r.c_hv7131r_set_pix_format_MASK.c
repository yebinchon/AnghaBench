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
struct v4l2_pix_format {int /*<<< orphan*/  pixelformat; } ;
struct sn9c102_device {int dummy; } ;

/* Variables and functions */
#define  BRIDGE_SN9C103 130 
#define  BRIDGE_SN9C105 129 
#define  BRIDGE_SN9C120 128 
 int /*<<< orphan*/  V4L2_PIX_FMT_SBGGR8 ; 
 int FUNC0 (struct sn9c102_device*) ; 
 int FUNC1 (struct sn9c102_device*,int,int) ; 
 int FUNC2 (struct sn9c102_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct sn9c102_device* cam,
				  const struct v4l2_pix_format* pix)
{
	int err = 0;

	switch (FUNC0(cam)) {
	case BRIDGE_SN9C103:
		if (pix->pixelformat == V4L2_PIX_FMT_SBGGR8) {
			err += FUNC2(cam, 0xa0, 0x19);
			err += FUNC1(cam, 0x01, 0x04);
		} else {
			err += FUNC2(cam, 0x30, 0x19);
			err += FUNC1(cam, 0x01, 0x04);
		}
		break;
	case BRIDGE_SN9C105:
	case BRIDGE_SN9C120:
		if (pix->pixelformat == V4L2_PIX_FMT_SBGGR8) {
			err += FUNC2(cam, 0xa5, 0x17);
			err += FUNC1(cam, 0x01, 0x24);
		} else {
			err += FUNC2(cam, 0xa3, 0x17);
			err += FUNC1(cam, 0x01, 0x04);
		}
		break;
	default:
		break;
	}

	return err;
}