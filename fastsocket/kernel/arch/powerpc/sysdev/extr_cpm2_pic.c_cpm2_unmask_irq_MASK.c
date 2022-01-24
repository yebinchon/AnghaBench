#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ic_simrh; } ;

/* Variables and functions */
 TYPE_1__* cpm2_intctl ; 
 int* irq_to_siubit ; 
 int* irq_to_siureg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int* ppc_cached_irq_mask ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int virq)
{
	int	bit, word;
	unsigned int irq_nr = FUNC1(virq);

	bit = irq_to_siubit[irq_nr];
	word = irq_to_siureg[irq_nr];

	ppc_cached_irq_mask[word] |= 1 << bit;
	FUNC0(&cpm2_intctl->ic_simrh + word, ppc_cached_irq_mask[word]);
}