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
struct wm831x {struct i2c_client* control_data; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 unsigned short FUNC0 (unsigned short) ; 
 int FUNC1 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void*,int) ; 

__attribute__((used)) static int FUNC3(struct wm831x *wm831x, unsigned short reg,
				   int bytes, void *src)
{
	struct i2c_client *i2c = wm831x->control_data;
	unsigned char msg[bytes + 2];
	int ret;

	reg = FUNC0(reg);
	FUNC2(&msg[0], &reg, 2);
	FUNC2(&msg[2], src, bytes);

	ret = FUNC1(i2c, msg, bytes + 2);
	if (ret < 0)
		return ret;
	if (ret < bytes + 2)
		return -EIO;

	return 0;
}