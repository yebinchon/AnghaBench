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
typedef  int u64 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD64_GARTAPERTUREBASE ; 
 int PCI_BASE_ADDRESS_MEM_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u64 FUNC2(struct pci_dev *hammer, u64 gatt_table)
{
	u64 aperturebase;
	u32 tmp;
	u64 aper_base;

	/* Address to map to */
	FUNC1(hammer, AMD64_GARTAPERTUREBASE, &tmp);
	aperturebase = tmp << 25;
	aper_base = (aperturebase & PCI_BASE_ADDRESS_MEM_MASK);

	FUNC0(hammer, gatt_table);

	return aper_base;
}