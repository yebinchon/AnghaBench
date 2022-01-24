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
struct io_apic_irq_attr {int dummy; } ;
struct TYPE_4__ {scalar_t__ apicid; } ;
struct TYPE_3__ {int srcbus; scalar_t__ dstapic; int srcbusirq; int /*<<< orphan*/  dstirq; int /*<<< orphan*/  irqtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_DEBUG ; 
 int /*<<< orphan*/  APIC_VERBOSE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ MP_APIC_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mp_bus_not_pci ; 
 TYPE_2__* mp_ioapics ; 
 int mp_irq_entries ; 
 TYPE_1__* mp_irqs ; 
 int nr_ioapics ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct io_apic_irq_attr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(int bus, int slot, int pin,
				struct io_apic_irq_attr *irq_attr)
{
	int apic, i, best_guess = -1;

	FUNC1(APIC_DEBUG,
		    "querying PCI -> IRQ mapping bus:%d, slot:%d, pin:%d.\n",
		    bus, slot, pin);
	if (FUNC6(bus, mp_bus_not_pci)) {
		FUNC1(APIC_VERBOSE,
			    "PCI BIOS passed nonexistent PCI bus %d!\n", bus);
		return -1;
	}
	for (i = 0; i < mp_irq_entries; i++) {
		int lbus = mp_irqs[i].srcbus;

		for (apic = 0; apic < nr_ioapics; apic++)
			if (mp_ioapics[apic].apicid == mp_irqs[i].dstapic ||
			    mp_irqs[i].dstapic == MP_APIC_ALL)
				break;

		if (!FUNC6(lbus, mp_bus_not_pci) &&
		    !mp_irqs[i].irqtype &&
		    (bus == lbus) &&
		    (slot == ((mp_irqs[i].srcbusirq >> 2) & 0x1f))) {
			int irq = FUNC4(i, apic, mp_irqs[i].dstirq);

			if (!(apic || FUNC0(irq)))
				continue;

			if (pin == (mp_irqs[i].srcbusirq & 3)) {
				FUNC5(irq_attr, apic,
						     mp_irqs[i].dstirq,
						     FUNC3(i),
						     FUNC2(i));
				return irq;
			}
			/*
			 * Use the first all-but-pin matching entry as a
			 * best-guess fuzzy result for broken mptables.
			 */
			if (best_guess < 0) {
				FUNC5(irq_attr, apic,
						     mp_irqs[i].dstirq,
						     FUNC3(i),
						     FUNC2(i));
				best_guess = irq;
			}
		}
	}
	return best_guess;
}