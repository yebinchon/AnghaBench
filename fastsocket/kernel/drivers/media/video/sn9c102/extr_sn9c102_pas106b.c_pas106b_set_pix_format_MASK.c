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
 scalar_t__ V4L2_PIX_FMT_SN9C10X ; 
 scalar_t__ FUNC0 (struct sn9c102_device*,int,int) ; 

__attribute__((used)) static int FUNC1(struct sn9c102_device* cam,
				  const struct v4l2_pix_format* pix)
{
	int err = 0;

	if (pix->pixelformat == V4L2_PIX_FMT_SN9C10X)
		err += FUNC0(cam, 0x2c, 0x17);
	else
		err += FUNC0(cam, 0x20, 0x17);

	return err;
}