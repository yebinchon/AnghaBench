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
 scalar_t__ FUNC0 (unsigned int,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 unsigned long* beatic_irq_mask_ack ; 
 unsigned long* beatic_irq_mask_enable ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline void FUNC2(unsigned int irq_plug)
{
	int off;
	unsigned long masks[4];

	off = (irq_plug / 256) * 4;
	masks[0] = beatic_irq_mask_enable[off + 0]
		& beatic_irq_mask_ack[off + 0];
	masks[1] = beatic_irq_mask_enable[off + 1]
		& beatic_irq_mask_ack[off + 1];
	masks[2] = beatic_irq_mask_enable[off + 2]
		& beatic_irq_mask_ack[off + 2];
	masks[3] = beatic_irq_mask_enable[off + 3]
		& beatic_irq_mask_ack[off + 3];
	if (FUNC0(irq_plug&~255UL,
		masks[0], masks[1], masks[2], masks[3]) != 0)
		FUNC1("Failed to set mask IRQ!");
}