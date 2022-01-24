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
 int /*<<< orphan*/  BAST_VA_PC104_IRQMASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long* bast_pc104_irqmasks ; 

__attribute__((used)) static void
FUNC2(unsigned int irqno)
{
	unsigned long temp;

	temp = FUNC0(BAST_VA_PC104_IRQMASK);
	temp &= ~bast_pc104_irqmasks[irqno];
	FUNC1(temp, BAST_VA_PC104_IRQMASK);
}