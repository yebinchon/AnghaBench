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
struct cadet {int io; } ;

/* Variables and functions */
 int FUNC0 (struct cadet*) ; 
 int /*<<< orphan*/  FUNC1 (struct cadet*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int,char*) ; 

__attribute__((used)) static void FUNC4(struct cadet *dev)
{
	static int iovals[8] = { 0x330, 0x332, 0x334, 0x336, 0x338, 0x33a, 0x33c, 0x33e };
	int i;

	for (i = 0; i < 8; i++) {
		dev->io = iovals[i];
		if (FUNC3(dev->io, 2, "cadet-probe")) {
			FUNC1(dev, 1410);
			if (FUNC0(dev) == 1410) {
				FUNC2(dev->io, 2);
				return;
			}
			FUNC2(dev->io, 2);
		}
	}
	dev->io = -1;
}