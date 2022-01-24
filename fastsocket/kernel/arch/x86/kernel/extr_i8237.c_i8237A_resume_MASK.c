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
struct sys_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA1_RESET_REG ; 
 int /*<<< orphan*/  DMA2_RESET_REG ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct sys_device *dev)
{
	unsigned long flags;
	int i;

	flags = FUNC0();

	FUNC1(0, DMA1_RESET_REG);
	FUNC1(0, DMA2_RESET_REG);

	for (i = 0; i < 8; i++) {
		FUNC4(i, 0x000000);
		/* DMA count is a bit weird so this is not 0 */
		FUNC5(i, 1);
	}

	/* Enable cascade DMA or channel 0-3 won't work */
	FUNC2(4);

	FUNC3(flags);

	return 0;
}