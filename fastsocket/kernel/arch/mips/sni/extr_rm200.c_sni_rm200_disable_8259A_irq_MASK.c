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
 scalar_t__ PIC_IMR ; 
 scalar_t__ RM200_I8259A_IRQ_BASE ; 
 int /*<<< orphan*/  cached_master_mask ; 
 int /*<<< orphan*/  cached_slave_mask ; 
 unsigned int rm200_cached_irq_mask ; 
 scalar_t__ rm200_pic_master ; 
 scalar_t__ rm200_pic_slave ; 
 int /*<<< orphan*/  sni_rm200_i8259A_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(unsigned int irq)
{
	unsigned int mask;
	unsigned long flags;

	irq -= RM200_I8259A_IRQ_BASE;
	mask = 1 << irq;
	FUNC0(&sni_rm200_i8259A_lock, flags);
	rm200_cached_irq_mask |= mask;
	if (irq & 8)
		FUNC2(cached_slave_mask, rm200_pic_slave + PIC_IMR);
	else
		FUNC2(cached_master_mask, rm200_pic_master + PIC_IMR);
	FUNC1(&sni_rm200_i8259A_lock, flags);
}