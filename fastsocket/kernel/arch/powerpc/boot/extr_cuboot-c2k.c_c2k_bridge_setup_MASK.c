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
typedef  int /*<<< orphan*/  v ;
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct mv64x60_cpu2pci_win {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ MV64x60_CPU_BAR_ENABLE ; 
 int MV64x60_PCI_ACC_CNTL_MBURST_128_BYTES ; 
 int MV64x60_PCI_ACC_CNTL_MBURST_32_BYTES ; 
 int MV64x60_PCI_ACC_CNTL_RDSIZE_256_BYTES ; 
 int MV64x60_PCI_ACC_CNTL_RDSIZE_32_BYTES ; 
 int MV64x60_PCI_ACC_CNTL_SNOOP_NONE ; 
 int MV64x60_PCI_ACC_CNTL_SNOOP_WB ; 
 int MV64x60_PCI_ACC_CNTL_SWAP_NONE ; 
 scalar_t__ bridge_base ; 
 int /*<<< orphan*/  FUNC0 (void*,int*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 void* FUNC2 (char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (void*,char*,int*,int) ; 
 int FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int,int,unsigned long,int,struct mv64x60_cpu2pci_win*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__*,int,int /*<<< orphan*/ ,int,int) ; 
 struct mv64x60_cpu2pci_win* mv64x60_cpu2pci_io ; 
 struct mv64x60_cpu2pci_win* mv64x60_cpu2pci_mem ; 
 scalar_t__* FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(u32 mem_size)
{
	u32 i, v[30], enables, acc_bits;
	u32 pci_base_hi, pci_base_lo, size, buf[2];
	unsigned long cpu_base;
	int rc;
	void *devp, *mv64x60_devp;
	u8 *bridge_pbase, is_coherent;
	struct mv64x60_cpu2pci_win *tbl;
	int bus;

	bridge_pbase = FUNC9();
	is_coherent = FUNC10();

	if (is_coherent)
		acc_bits = MV64x60_PCI_ACC_CNTL_SNOOP_WB
			| MV64x60_PCI_ACC_CNTL_SWAP_NONE
			| MV64x60_PCI_ACC_CNTL_MBURST_32_BYTES
			| MV64x60_PCI_ACC_CNTL_RDSIZE_32_BYTES;
	else
		acc_bits = MV64x60_PCI_ACC_CNTL_SNOOP_NONE
			| MV64x60_PCI_ACC_CNTL_SWAP_NONE
			| MV64x60_PCI_ACC_CNTL_MBURST_128_BYTES
			| MV64x60_PCI_ACC_CNTL_RDSIZE_256_BYTES;

	FUNC7(bridge_base, bridge_pbase, is_coherent);
	mv64x60_devp = FUNC3(NULL, "marvell,mv64360");
	if (mv64x60_devp == NULL)
		FUNC1("Error: Missing marvell,mv64360 device tree node\n\r");

	enables = FUNC5((u32 *)(bridge_base + MV64x60_CPU_BAR_ENABLE));
	enables |= 0x007ffe00; /* Disable all cpu->pci windows */
	FUNC11((u32 *)(bridge_base + MV64x60_CPU_BAR_ENABLE), enables);

	/* Get the cpu -> pci i/o & mem mappings from the device tree */
	devp = NULL;
	for (bus = 0; ; bus++) {
		char name[] = "pci ";

		name[FUNC12(name)-1] = bus+'0';

		devp = FUNC2(name);
		if (devp == NULL)
			break;

		if (bus >= 2)
			FUNC1("Error: Only 2 PCI controllers are supported at" \
				" this time.\n");

		FUNC8(bridge_base, bridge_pbase, bus, 0,
				mem_size, acc_bits);

		rc = FUNC4(devp, "ranges", v, sizeof(v));
		if (rc == 0)
			FUNC1("Error: Can't find marvell,mv64360-pci ranges"
				" property\n\r");

		/* Get the cpu -> pci i/o & mem mappings from the device tree */

		for (i = 0; i < rc; i += 6) {
			switch (v[i] & 0xff000000) {
			case 0x01000000: /* PCI I/O Space */
				tbl = mv64x60_cpu2pci_io;
				break;
			case 0x02000000: /* PCI MEM Space */
				tbl = mv64x60_cpu2pci_mem;
				break;
			default:
				continue;
			}

			pci_base_hi = v[i+1];
			pci_base_lo = v[i+2];
			cpu_base = v[i+3];
			size = v[i+5];

			buf[0] = cpu_base;
			buf[1] = size;

			if (!FUNC0(devp, buf, sizeof(buf), &cpu_base))
				FUNC1("Error: Can't translate PCI address " \
						"0x%x\n\r", (u32)cpu_base);

			FUNC6(bridge_base, bus,
				pci_base_hi, pci_base_lo, cpu_base, size, tbl);
		}

		enables &= ~(3<<(9+bus*5)); /* Enable cpu->pci<bus> i/o,
						cpu->pci<bus> mem0 */
		FUNC11((u32 *)(bridge_base + MV64x60_CPU_BAR_ENABLE),
			enables);
	};
}