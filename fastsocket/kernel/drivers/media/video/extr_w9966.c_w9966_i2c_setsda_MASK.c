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
struct w9966_dev {int /*<<< orphan*/  i2c_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  W9966_I2C_W_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct w9966_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct w9966_dev* cam, int state)
{
	if (state)
		cam->i2c_state |= W9966_I2C_W_DATA;
	else
		cam->i2c_state &= ~W9966_I2C_W_DATA;

	FUNC1(cam, 0x18, cam->i2c_state);
	FUNC0(5);
}