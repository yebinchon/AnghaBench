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
struct sn_irq_info {int irq_irq; int irq_cpuid; } ;
struct TYPE_2__ {int sn_last_irq; int sn_first_irq; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct sn_irq_info *sn_irq_info)
{
	int irq = sn_irq_info->irq_irq;
	int cpu = sn_irq_info->irq_cpuid;

	if (FUNC0(cpu)->sn_last_irq < irq) {
		FUNC0(cpu)->sn_last_irq = irq;
	}

	if (FUNC0(cpu)->sn_first_irq == 0 || FUNC0(cpu)->sn_first_irq > irq)
		FUNC0(cpu)->sn_first_irq = irq;
}