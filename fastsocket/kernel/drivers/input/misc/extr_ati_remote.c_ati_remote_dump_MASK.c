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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,...) ; 

__attribute__((used)) static void FUNC1(struct device *dev, unsigned char *data,
			    unsigned int len)
{
	if ((len == 1) && (data[0] != (unsigned char)0xff) && (data[0] != 0x00))
		FUNC0(dev, "Weird byte 0x%02x\n", data[0]);
	else if (len == 4)
		FUNC0(dev, "Weird key %02x %02x %02x %02x\n",
		     data[0], data[1], data[2], data[3]);
	else
		FUNC0(dev, "Weird data, len=%d %02x %02x %02x %02x %02x %02x ...\n",
		     len, data[0], data[1], data[2], data[3], data[4], data[5]);
}