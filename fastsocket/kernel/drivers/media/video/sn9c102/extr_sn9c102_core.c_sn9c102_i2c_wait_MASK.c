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
struct sn9c102_sensor {int frequency; } ;
struct sn9c102_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int SN9C102_I2C_400KHZ ; 
 int FUNC0 (struct sn9c102_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct sn9c102_device* cam,
		 const struct sn9c102_sensor* sensor)
{
	int i, r;

	for (i = 1; i <= 5; i++) {
		r = FUNC0(cam, 0x08);
		if (r < 0)
			return -EIO;
		if (r & 0x04)
			return 0;
		if (sensor->frequency & SN9C102_I2C_400KHZ)
			FUNC1(5*16);
		else
			FUNC1(16*16);
	}
	return -EBUSY;
}