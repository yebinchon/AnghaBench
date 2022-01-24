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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 unsigned long IORESOURCE_IO ; 
 unsigned long IORESOURCE_MEM ; 
 unsigned long IORESOURCE_PREFETCH ; 
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct pci_bus *bus)
{
	unsigned long type = IORESOURCE_IO | IORESOURCE_MEM |
				  IORESOURCE_PREFETCH;

	FUNC0(bus, type);
}