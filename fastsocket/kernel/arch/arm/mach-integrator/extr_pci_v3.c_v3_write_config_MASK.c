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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  v3_lock ; 
 unsigned long FUNC9 (struct pci_bus*,unsigned int,int) ; 

__attribute__((used)) static int FUNC10(struct pci_bus *bus, unsigned int devfn, int where,
			   int size, u32 val)
{
	unsigned long addr;
	unsigned long flags;

	FUNC6(&v3_lock, flags);
	addr = FUNC9(bus, devfn, where);

	switch (size) {
	case 1:
		FUNC3((u8)val, addr);
		FUNC0(addr);
		break;

	case 2:
		FUNC5((u16)val, addr);
		FUNC2(addr);
		break;

	case 4:
		FUNC4(val, addr);
		FUNC1(addr);
		break;
	}

	FUNC8();
	FUNC7(&v3_lock, flags);

	return PCIBIOS_SUCCESSFUL;
}