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
 int /*<<< orphan*/  PIC_LO ; 
 int /*<<< orphan*/  PIC_MASK_LO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	unsigned int mask = 1 << (irq & 7);

	FUNC1(FUNC0(PIC_MASK_LO) | mask, PIC_MASK_LO);
	FUNC1(0x20, PIC_LO);
}