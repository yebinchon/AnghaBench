#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct irqaction {int name; struct irqaction* next; } ;
typedef  int loff_t ;
struct TYPE_4__ {TYPE_1__* chip; struct irqaction* action; } ;
struct TYPE_3__ {int name; } ;

/* Variables and functions */
 int NR_IRQS ; 
 TYPE_2__* irq_desc ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 

int FUNC4(struct seq_file *p, void *v)
{
	struct irqaction *ap;
	int irq = *((loff_t *) v);

	if (irq == 0)
		FUNC3(p, "           CPU0\n");

	if (irq < NR_IRQS) {
		ap = irq_desc[irq].action;
		if (ap) {
			FUNC1(p, "%3d: ", irq);
			FUNC1(p, "%10u ", FUNC0(irq));
			FUNC1(p, "%14s  ", irq_desc[irq].chip->name);

			FUNC1(p, "%s", ap->name);
			for (ap = ap->next; ap; ap = ap->next)
				FUNC1(p, ", %s", ap->name);
			FUNC2(p, '\n');
		}
	}

	return 0;
}