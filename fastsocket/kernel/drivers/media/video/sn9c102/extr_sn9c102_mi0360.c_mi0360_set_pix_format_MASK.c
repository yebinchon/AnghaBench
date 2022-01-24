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
 scalar_t__ BRIDGE_SN9C105 ; 
 scalar_t__ BRIDGE_SN9C120 ; 
 scalar_t__ V4L2_PIX_FMT_SBGGR8 ; 
 scalar_t__ FUNC0 (struct sn9c102_device*) ; 
 struct sn9c102_sensor* FUNC1 (struct sn9c102_device*) ; 
 scalar_t__ FUNC2 (struct sn9c102_device*,struct sn9c102_sensor*,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sn9c102_device*,int,int) ; 

__attribute__((used)) static int FUNC4(struct sn9c102_device* cam,
				 const struct v4l2_pix_format* pix)
{
	struct sn9c102_sensor* s = FUNC1(cam);
	int err = 0;

	if (pix->pixelformat == V4L2_PIX_FMT_SBGGR8) {
		err += FUNC2(cam, s, 4, s->i2c_slave_id,
						 0x0a, 0x00, 0x05, 0, 0);
		err += FUNC3(cam, 0x60, 0x19);
		if (FUNC0(cam) == BRIDGE_SN9C105 ||
		    FUNC0(cam) == BRIDGE_SN9C120)
			err += FUNC3(cam, 0xa6, 0x17);
	} else {
		err += FUNC2(cam, s, 4, s->i2c_slave_id,
						 0x0a, 0x00, 0x02, 0, 0);
		err += FUNC3(cam, 0x20, 0x19);
		if (FUNC0(cam) == BRIDGE_SN9C105 ||
		    FUNC0(cam) == BRIDGE_SN9C120)
			err += FUNC3(cam, 0xa2, 0x17);
	}

	return err;
}