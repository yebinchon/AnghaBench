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
 unsigned int NR_IRQS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int* sbus_tid ; 
 int* sbus_to_pil ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sun4d_imsk_lock ; 

__attribute__((used)) static void FUNC4(unsigned int irq)
{
	int tid = sbus_tid[(irq >> 5) - 1];
	unsigned long flags;
	
	if (irq < NR_IRQS)
		return;

	FUNC2(&sun4d_imsk_lock, flags);
	FUNC1(tid, FUNC0(tid) & ~(1 << sbus_to_pil[(irq >> 2) & 7]));
	FUNC3(&sun4d_imsk_lock, flags);
}