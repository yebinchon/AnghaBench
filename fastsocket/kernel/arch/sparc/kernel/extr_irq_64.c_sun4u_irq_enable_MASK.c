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
struct irq_handler_data {unsigned long imap; unsigned long iclr; } ;

/* Variables and functions */
 unsigned long ICLR_IDLE ; 
 unsigned long IMAP_AID_SAFARI ; 
 unsigned long IMAP_NID_SAFARI ; 
 unsigned long IMAP_TID_JBUS ; 
 unsigned long IMAP_TID_UPA ; 
 unsigned int IMAP_VALID ; 
 struct irq_handler_data* FUNC0 (unsigned int) ; 
 unsigned long FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct irq_handler_data*) ; 
 unsigned int FUNC3 (unsigned long,unsigned long) ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned int virt_irq)
{
	struct irq_handler_data *data = FUNC0(virt_irq);

	if (FUNC2(data)) {
		unsigned long cpuid, imap, val;
		unsigned int tid;

		cpuid = FUNC1(virt_irq);
		imap = data->imap;

		tid = FUNC3(imap, cpuid);

		val = FUNC4(imap);
		val &= ~(IMAP_TID_UPA | IMAP_TID_JBUS |
			 IMAP_AID_SAFARI | IMAP_NID_SAFARI);
		val |= tid | IMAP_VALID;
		FUNC5(val, imap);
		FUNC5(ICLR_IDLE, data->iclr);
	}
}