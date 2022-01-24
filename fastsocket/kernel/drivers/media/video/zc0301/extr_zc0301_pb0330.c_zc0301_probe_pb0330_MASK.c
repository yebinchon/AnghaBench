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
struct zc0301_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  pb0330 ; 
 int /*<<< orphan*/  FUNC1 (struct zc0301_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct zc0301_device*,int,int) ; 
 scalar_t__ FUNC3 (struct zc0301_device*,int,int) ; 

int FUNC4(struct zc0301_device* cam)
{
	int r0, err = 0;

	err += FUNC3(cam, 0x0000, 0x01);
	err += FUNC3(cam, 0x0010, 0x0a);
	err += FUNC3(cam, 0x0001, 0x01);
	err += FUNC3(cam, 0x0012, 0x03);
	err += FUNC3(cam, 0x0012, 0x01);

	FUNC0(10);

	r0 = FUNC2(cam, 0x00, 2);

	if (r0 < 0 || err)
		return -EIO;

	if (r0 != 0x8243)
		return -ENODEV;

	FUNC1(cam, &pb0330);

	return 0;
}