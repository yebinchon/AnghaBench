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
typedef  int u32 ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ACPI_ACTIVE_HIGH ; 
 int ACPI_ACTIVE_LOW ; 
 int ACPI_EDGE_SENSITIVE ; 
 int ACPI_LEVEL_SENSITIVE ; 
 int IORESOURCE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,char*,char*) ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pnp_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct pnp_dev *dev,
						u32 gsi, int triggering,
						int polarity, int shareable)
{
	int irq, flags;
	int p, t;

	if (!FUNC6(gsi)) {
		FUNC5(dev, gsi, IORESOURCE_DISABLED);
		return;
	}

	/*
	 * in IO-APIC mode, use overrided attribute. Two reasons:
	 * 1. BIOS bug in DSDT
	 * 2. BIOS uses IO-APIC mode Interrupt Source Override
	 */
	if (!FUNC0(gsi, &t, &p)) {
		t = t ? ACPI_LEVEL_SENSITIVE : ACPI_EDGE_SENSITIVE;
		p = p ? ACPI_ACTIVE_LOW : ACPI_ACTIVE_HIGH;

		if (triggering != t || polarity != p) {
			FUNC2(&dev->dev, "IRQ %d override to %s, %s\n",
				gsi, t ? "edge":"level", p ? "low":"high");
			triggering = t;
			polarity = p;
		}
	}

	flags = FUNC3(triggering, polarity, shareable);
	irq = FUNC1(&dev->dev, gsi, triggering, polarity);
	if (irq >= 0)
		FUNC4(irq, 1);
	else
		flags |= IORESOURCE_DISABLED;

	FUNC5(dev, irq, flags);
}