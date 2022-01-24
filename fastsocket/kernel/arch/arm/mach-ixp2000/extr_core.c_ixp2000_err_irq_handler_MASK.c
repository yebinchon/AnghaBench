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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ IRQ_IXP2000_DRAM0_MIN_ERR ; 
 unsigned long* IXP2000_IRQ_ERR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(unsigned int irq, struct irq_desc *desc)
{
	int i;
	unsigned long status = *IXP2000_IRQ_ERR_STATUS;

	for(i = 31; i >= 0; i--) {
		if(status & (1 << i)) {
			FUNC0(IRQ_IXP2000_DRAM0_MIN_ERR + i);
		}
	}
}