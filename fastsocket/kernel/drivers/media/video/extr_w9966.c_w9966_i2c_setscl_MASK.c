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
 int /*<<< orphan*/  W9966_I2C_W_CLOCK ; 
 int jiffies ; 
 scalar_t__ FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct w9966_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct w9966_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct w9966_dev* cam, int state)
{
	unsigned long timeout;

	if (state)
		cam->i2c_state |= W9966_I2C_W_CLOCK;
	else
		cam->i2c_state &= ~W9966_I2C_W_CLOCK;

	FUNC3(cam, 0x18, cam->i2c_state);
	FUNC1(5);

	// we go to high, we also expect the peripheral to ack.
	if (state) {
		timeout = jiffies + 100;
		while (!FUNC2(cam)) {
			if (FUNC0(jiffies, timeout))
				return -1;
		}
	}
	return 0;
}