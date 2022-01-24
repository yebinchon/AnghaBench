#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct cpuinfo_x86 {int x86; } ;
struct amd64_pvt {TYPE_3__* ranges; struct pci_dev* F1; } ;
struct TYPE_5__ {int lo; int hi; } ;
struct TYPE_4__ {int lo; int hi; } ;
struct TYPE_6__ {TYPE_2__ lim; TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ DRAM_BASE_HI ; 
 scalar_t__ DRAM_BASE_LO ; 
 scalar_t__ DRAM_LIMIT_HI ; 
 scalar_t__ DRAM_LIMIT_LO ; 
 scalar_t__ DRAM_LOCAL_NODE_LIM ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int*) ; 
 struct cpuinfo_x86 boot_cpu_data ; 
 scalar_t__ FUNC4 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct amd64_pvt *pvt, unsigned range)
{
	struct cpuinfo_x86 *c = &boot_cpu_data;
	int off = range << 3;

	FUNC3(pvt->F1, DRAM_BASE_LO + off,  &pvt->ranges[range].base.lo);
	FUNC3(pvt->F1, DRAM_LIMIT_LO + off, &pvt->ranges[range].lim.lo);

	if (c->x86 == 0xf)
		return;

	if (!FUNC5(pvt, range))
		return;

	FUNC3(pvt->F1, DRAM_BASE_HI + off,  &pvt->ranges[range].base.hi);
	FUNC3(pvt->F1, DRAM_LIMIT_HI + off, &pvt->ranges[range].lim.hi);

	/* Factor in CC6 save area by reading dst node's limit reg */
	if (c->x86 == 0x15) {
		struct pci_dev *f1 = NULL;
		u8 nid = FUNC4(pvt, range);
		u32 llim;

		f1 = FUNC7(0, 0, FUNC1(0x18 + nid, 1));
		if (FUNC2(!f1))
			return;

		FUNC3(f1, DRAM_LOCAL_NODE_LIM, &llim);

		pvt->ranges[range].lim.lo &= FUNC0(0, 15);

					    /* {[39:27],111b} */
		pvt->ranges[range].lim.lo |= ((llim & 0x1fff) << 3 | 0x7) << 16;

		pvt->ranges[range].lim.hi &= FUNC0(0, 7);

					    /* [47:40] */
		pvt->ranges[range].lim.hi |= llim >> 13;

		FUNC6(f1);
	}
}