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
typedef  int u8 ;

/* Variables and functions */
 int RBTX4927_IRQ_IOC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  rbtx4927_imstat_addr ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int sw_irq)
{
	u8 level3;

	level3 = FUNC1(rbtx4927_imstat_addr) & 0x1f;
	if (FUNC2(!level3))
		return -1;
	return RBTX4927_IRQ_IOC + FUNC0(level3);
}