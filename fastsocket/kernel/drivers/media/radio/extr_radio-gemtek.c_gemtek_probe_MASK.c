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
struct v4l2_device {int dummy; } ;
struct gemtek {int io; struct v4l2_device v4l2_dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (struct gemtek*,int) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_device*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct gemtek *gt)
{
	struct v4l2_device *v4l2_dev = &gt->v4l2_dev;
	int ioports[] = { 0x20c, 0x30c, 0x24c, 0x34c, 0x248, 0x28c };
	int i;

	if (!probe) {
		FUNC5(v4l2_dev, "Automatic device probing disabled.\n");
		return -1;
	}

	FUNC5(v4l2_dev, "Automatic device probing enabled.\n");

	for (i = 0; i < FUNC0(ioports); ++i) {
		FUNC5(v4l2_dev, "Trying I/O port 0x%x...\n", ioports[i]);

		if (!FUNC3(ioports[i], 1, "gemtek-probe")) {
			FUNC6(v4l2_dev, "I/O port 0x%x busy!\n",
			       ioports[i]);
			continue;
		}

		if (FUNC1(gt, ioports[i])) {
			FUNC5(v4l2_dev, "Card found from I/O port "
			       "0x%x!\n", ioports[i]);

			FUNC2(ioports[i], 1);
			gt->io = ioports[i];
			return gt->io;
		}

		FUNC2(ioports[i], 1);
	}

	FUNC4(v4l2_dev, "Automatic probing failed!\n");
	return -1;
}