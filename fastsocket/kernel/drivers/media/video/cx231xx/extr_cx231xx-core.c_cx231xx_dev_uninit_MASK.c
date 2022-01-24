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
struct cx231xx {int /*<<< orphan*/ * i2c_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct cx231xx *dev)
{
	/* Un Initialize I2C bus */
	FUNC0(&dev->i2c_bus[2]);
	FUNC0(&dev->i2c_bus[1]);
	FUNC0(&dev->i2c_bus[0]);
}