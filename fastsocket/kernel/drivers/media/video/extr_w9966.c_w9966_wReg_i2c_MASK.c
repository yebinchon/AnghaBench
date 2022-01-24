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
struct w9966_dev {int dummy; } ;

/* Variables and functions */
 int W9966_I2C_W_ID ; 
 int FUNC0 (struct w9966_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct w9966_dev*,int) ; 
 int FUNC2 (struct w9966_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct w9966_dev* cam, int reg, int data)
{
	FUNC1(cam, 0);
	FUNC0(cam, 0);

	if (
		FUNC2(cam, W9966_I2C_W_ID) == -1 ||
		FUNC2(cam, reg) == -1 ||
		FUNC2(cam, data) == -1
	)
		return -1;

	FUNC1(cam, 0);
	if (FUNC0(cam, 1) == -1)
		return -1;

	FUNC1(cam, 1);

	return 0;
}