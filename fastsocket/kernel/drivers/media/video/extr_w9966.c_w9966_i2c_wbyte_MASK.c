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
 int FUNC0 (struct w9966_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct w9966_dev*,int) ; 

__attribute__((used)) static int FUNC2(struct w9966_dev* cam, int data)
{
	int i;
	for (i = 7; i >= 0; i--)
	{
		FUNC1(cam, (data >> i) & 0x01);

		if (FUNC0(cam, 1) == -1)
			return -1;
		FUNC0(cam, 0);
	}

	FUNC1(cam, 1);

	if (FUNC0(cam, 1) == -1)
		return -1;
	FUNC0(cam, 0);

	return 0;
}