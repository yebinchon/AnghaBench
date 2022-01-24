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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct soc_camera_device {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int HSP_HI ; 
 int HSSL_DVALID ; 
 int /*<<< orphan*/  OUTCTR1 ; 
 unsigned long SOCAM_HSYNC_ACTIVE_LOW ; 
 unsigned long SOCAM_VSYNC_ACTIVE_LOW ; 
 int VSP_HI ; 
 int VSSL_VVALID ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct v4l2_subdev* FUNC1 (struct soc_camera_device*) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct soc_camera_device *icd,
				unsigned long flags)
{
	struct v4l2_subdev *sd = FUNC1(icd);
	struct i2c_client *client = FUNC2(sd);
	u8 val = VSSL_VVALID | HSSL_DVALID;

	/*
	 * set OUTCTR1
	 *
	 * We use VVALID and DVALID signals to control VSYNC and HSYNC
	 * outputs, in this mode their polarity is inverted.
	 */
	if (flags & SOCAM_HSYNC_ACTIVE_LOW)
		val |= HSP_HI;

	if (flags & SOCAM_VSYNC_ACTIVE_LOW)
		val |= VSP_HI;

	return FUNC0(client, OUTCTR1, val);
}