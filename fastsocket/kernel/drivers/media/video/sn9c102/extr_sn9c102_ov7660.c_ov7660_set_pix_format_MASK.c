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
struct v4l2_pix_format {scalar_t__ pixelformat; } ;
struct sn9c102_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ V4L2_PIX_FMT_JPEG ; 
 scalar_t__ FUNC0 (struct sn9c102_device*,int,int) ; 
 int FUNC1 (struct sn9c102_device*,int) ; 
 scalar_t__ FUNC2 (struct sn9c102_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct sn9c102_device* cam,
				 const struct v4l2_pix_format* pix)
{
	int r0, err = 0;

	r0 = FUNC1(cam, 0x01);

	if (pix->pixelformat == V4L2_PIX_FMT_JPEG) {
		err += FUNC2(cam, r0 | 0x40, 0x01);
		err += FUNC2(cam, 0xa2, 0x17);
		err += FUNC0(cam, 0x11, 0x00);
	} else {
		err += FUNC2(cam, r0 | 0x40, 0x01);
		err += FUNC2(cam, 0xa2, 0x17);
		err += FUNC0(cam, 0x11, 0x0d);
	}

	return err;
}