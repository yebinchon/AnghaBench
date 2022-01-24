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
struct soc_camera_device {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long MT9T031_BUS_PARAM ; 
 int /*<<< orphan*/  MT9T031_PIXEL_CLOCK_CONTROL ; 
 unsigned long SOCAM_PCLK_SAMPLE_FALLING ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_camera_device*) ; 

__attribute__((used)) static int FUNC4(struct soc_camera_device *icd,
				 unsigned long flags)
{
	struct i2c_client *client = FUNC2(FUNC3(icd));

	/* The caller should have queried our parameters, check anyway */
	if (flags & ~MT9T031_BUS_PARAM)
		return -EINVAL;

	if (flags & SOCAM_PCLK_SAMPLE_FALLING)
		FUNC0(client, MT9T031_PIXEL_CLOCK_CONTROL, 0x8000);
	else
		FUNC1(client, MT9T031_PIXEL_CLOCK_CONTROL, 0x8000);

	return 0;
}