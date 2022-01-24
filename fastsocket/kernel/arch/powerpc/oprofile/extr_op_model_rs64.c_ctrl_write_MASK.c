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

/* Variables and functions */
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_MMCR1 ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned int i, unsigned int val)
{
	unsigned int tmp = 0;
	unsigned long shift = 0, mask = 0;

	FUNC0("ctrl_write %d %x\n", i, val);

	switch(i) {
	case 0:
		tmp = FUNC1(SPRN_MMCR0);
		shift = 6;
		mask = 0x7F;
		break;
	case 1:
		tmp = FUNC1(SPRN_MMCR0);
		shift = 0;
		mask = 0x3F;
		break;
	case 2:
		tmp = FUNC1(SPRN_MMCR1);
		shift = 31 - 4;
		mask = 0x1F;
		break;
	case 3:
		tmp = FUNC1(SPRN_MMCR1);
		shift = 31 - 9;
		mask = 0x1F;
		break;
	case 4:
		tmp = FUNC1(SPRN_MMCR1);
		shift = 31 - 14;
		mask = 0x1F;
		break;
	case 5:
		tmp = FUNC1(SPRN_MMCR1);
		shift = 31 - 19;
		mask = 0x1F;
		break;
	case 6:
		tmp = FUNC1(SPRN_MMCR1);
		shift = 31 - 24;
		mask = 0x1F;
		break;
	case 7:
		tmp = FUNC1(SPRN_MMCR1);
		shift = 31 - 28;
		mask = 0xF;
		break;
	}

	tmp = tmp & ~(mask << shift);
	tmp |= val << shift;

	switch(i) {
		case 0:
		case 1:
			FUNC2(SPRN_MMCR0, tmp);
			break;
		default:
			FUNC2(SPRN_MMCR1, tmp);
	}

	FUNC0("ctrl_write mmcr0 %lx mmcr1 %lx\n", FUNC1(SPRN_MMCR0),
	       FUNC1(SPRN_MMCR1));
}