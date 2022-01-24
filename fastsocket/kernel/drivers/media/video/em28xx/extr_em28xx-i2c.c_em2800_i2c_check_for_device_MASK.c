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
struct em28xx {int (* em28xx_write_regs ) (struct em28xx*,int,char*,int) ;unsigned int (* em28xx_read_reg ) (struct em28xx*,int) ;} ;

/* Variables and functions */
 int EM2800_I2C_WRITE_TIMEOUT ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct em28xx*,int,char*,int) ; 
 int FUNC3 (struct em28xx*,int,char*,int) ; 
 unsigned int FUNC4 (struct em28xx*,int) ; 

__attribute__((used)) static int FUNC5(struct em28xx *dev, unsigned char addr)
{
	char msg;
	int ret;
	int write_timeout;
	msg = addr;
	ret = dev->em28xx_write_regs(dev, 0x04, &msg, 1);
	if (ret < 0) {
		FUNC0("setting i2c device address failed (error=%i)\n",
			    ret);
		return ret;
	}
	msg = 0x84;
	ret = dev->em28xx_write_regs(dev, 0x05, &msg, 1);
	if (ret < 0) {
		FUNC0("preparing i2c read failed (error=%i)\n", ret);
		return ret;
	}
	for (write_timeout = EM2800_I2C_WRITE_TIMEOUT; write_timeout > 0;
	     write_timeout -= 5) {
		unsigned reg = dev->em28xx_read_reg(dev, 0x5);

		if (reg == 0x94)
			return -ENODEV;
		else if (reg == 0x84)
			return 0;
		FUNC1(5);
	}
	return -ENODEV;
}