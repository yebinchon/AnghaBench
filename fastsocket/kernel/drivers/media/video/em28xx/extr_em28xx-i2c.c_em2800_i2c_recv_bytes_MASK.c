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
struct em28xx {int (* em28xx_read_reg_req_len ) (struct em28xx*,int,int,char*,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct em28xx*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,int) ; 
 int FUNC2 (struct em28xx*,int,int,char*,int) ; 

__attribute__((used)) static int FUNC3(struct em28xx *dev, unsigned char addr,
				 char *buf, int len)
{
	int ret;
	/* check for the device and set i2c read address */
	ret = FUNC0(dev, addr);
	if (ret) {
		FUNC1
		    ("preparing read at i2c address 0x%x failed (error=%i)\n",
		     addr, ret);
		return ret;
	}
	ret = dev->em28xx_read_reg_req_len(dev, 0x0, 0x3, buf, len);
	if (ret < 0) {
		FUNC1("reading from i2c device at 0x%x failed (error=%i)",
			    addr, ret);
		return ret;
	}
	return ret;
}