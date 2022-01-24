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
struct pci_pbm_info {int dummy; } ;
struct pci_bus {unsigned char number; struct pci_pbm_info* sysdata; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct pci_pbm_info*,unsigned char,unsigned int,int) ; 
 int FUNC6 (struct pci_pbm_info*,unsigned char,unsigned int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pci_bus *bus_dev, unsigned int devfn,
			       int where, int size, u32 value)
{
	struct pci_pbm_info *pbm = bus_dev->sysdata;
	unsigned char bus = bus_dev->number;
	u32 *addr;

	if (!bus_dev->number && !FUNC0(devfn))
		return FUNC6(pbm, bus, devfn, where,
						size, value);

	addr = FUNC5(pbm, bus, devfn, where);
	if (!addr)
		return PCIBIOS_SUCCESSFUL;

	switch (size) {
	case 1:
		FUNC3((u8 *)addr, value);
		break;

	case 2:
		if (where & 0x01) {
			FUNC4("pci_write_config_word: misaligned reg [%x]\n",
			       where);
			return PCIBIOS_SUCCESSFUL;
		}
		FUNC1((u16 *)addr, value);
		break;

	case 4:
		if (where & 0x03) {
			FUNC4("pci_write_config_dword: misaligned reg [%x]\n",
			       where);
			return PCIBIOS_SUCCESSFUL;
		}
		FUNC2(addr, value);
	}
	return PCIBIOS_SUCCESSFUL;
}