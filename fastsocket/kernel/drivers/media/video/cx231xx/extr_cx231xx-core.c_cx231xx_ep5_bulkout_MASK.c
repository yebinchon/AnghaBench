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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct cx231xx {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(struct cx231xx *dev, u8 *firmware, u16 size)
{
	int errCode = 0;
	int actlen, ret = -ENOMEM;
	u32 *buffer;

buffer = FUNC2(4096, GFP_KERNEL);
	if (buffer == NULL) {
		FUNC0("out of mem\n");
		return -ENOMEM;
	}
	FUNC3(&buffer[0], firmware, 4096);

	ret = FUNC4(dev->udev, FUNC5(dev->udev, 5),
				 buffer, 4096, &actlen, 2000);

	if (ret)
		FUNC0("bulk message failed: %d (%d/%d)", ret,
				 size, actlen);
	else {
		errCode = actlen != size ? -1 : 0;
	}
FUNC1(buffer);
	return 0;
}