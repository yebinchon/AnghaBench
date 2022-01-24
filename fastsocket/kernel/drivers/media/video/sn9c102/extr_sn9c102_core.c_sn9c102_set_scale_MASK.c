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
struct sn9c102_device {int* reg; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct sn9c102_device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct sn9c102_device* cam, u8 scale)
{
	u8 r = 0;
	int err = 0;

	if (scale == 1)
		r = cam->reg[0x18] & 0xcf;
	else if (scale == 2) {
		r = cam->reg[0x18] & 0xcf;
		r |= 0x10;
	} else if (scale == 4)
		r = cam->reg[0x18] | 0x20;

	err += FUNC1(cam, r, 0x18);
	if (err)
		return -EIO;

	FUNC0("Scaling factor: %u", scale);

	return 0;
}