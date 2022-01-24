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
struct sn9c102_sensor {int /*<<< orphan*/  i2c_slave_id; } ;
struct sn9c102_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ V4L2_PIX_FMT_SN9C10X ; 
 struct sn9c102_sensor* FUNC0 (struct sn9c102_device*) ; 
 scalar_t__ FUNC1 (struct sn9c102_device*,struct sn9c102_sensor*,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sn9c102_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct sn9c102_device* cam,
				 const struct v4l2_pix_format* pix)
{
	struct sn9c102_sensor* s = FUNC0(cam);
	int err = 0;

	if (pix->pixelformat == V4L2_PIX_FMT_SN9C10X) {
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x0a, 0x00, 0x03, 0, 0);
		err += FUNC2(cam, 0x20, 0x19);
	} else {
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x0a, 0x00, 0x05, 0, 0);
		err += FUNC2(cam, 0xa0, 0x19);
	}

	return err;
}