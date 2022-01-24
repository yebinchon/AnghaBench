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
typedef  int /*<<< orphan*/  u16 ;
struct wm831x {struct i2c_client* control_data; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int FUNC1 (struct i2c_client*,void*,int) ; 
 int FUNC2 (struct i2c_client*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC3(struct wm831x *wm831x, unsigned short reg,
				  int bytes, void *dest)
{
	struct i2c_client *i2c = wm831x->control_data;
	int ret;
	u16 r = FUNC0(reg);

	ret = FUNC2(i2c, (unsigned char *)&r, 2);
	if (ret < 0)
		return ret;
	if (ret != 2)
		return -EIO;

	ret = FUNC1(i2c, dest, bytes);
	if (ret < 0)
		return ret;
	if (ret != bytes)
		return -EIO;
	return 0;
}