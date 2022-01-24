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
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  v3_lock ; 
 unsigned long FUNC6 (struct pci_bus*,unsigned int,int) ; 

__attribute__((used)) static int FUNC7(struct pci_bus *bus, unsigned int devfn, int where,
			  int size, u32 *val)
{
	unsigned long addr;
	unsigned long flags;
	u32 v;

	FUNC3(&v3_lock, flags);
	addr = FUNC6(bus, devfn, where);

	switch (size) {
	case 1:
		v = FUNC0(addr);
		break;

	case 2:
		v = FUNC2(addr);
		break;

	default:
		v = FUNC1(addr);
		break;
	}

	FUNC5();
	FUNC4(&v3_lock, flags);

	*val = v;
	return PCIBIOS_SUCCESSFUL;
}