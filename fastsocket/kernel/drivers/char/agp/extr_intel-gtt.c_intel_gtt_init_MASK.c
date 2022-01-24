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
typedef  int u32 ;
struct TYPE_6__ {int gtt_mappable_entries; int gtt_total_entries; int PGETBL_save; int needs_dmar; int gma_bus_addr; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  stolen_size; scalar_t__ registers; TYPE_2__* driver; int /*<<< orphan*/ * gtt; int /*<<< orphan*/  gtt_bus_addr; TYPE_1__* bridge_dev; } ;
struct TYPE_5__ {int (* setup ) () ;int /*<<< orphan*/  (* cleanup ) () ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ HAS_PGTBL_EN ; 
 int /*<<< orphan*/  I810_GMADDR ; 
 scalar_t__ I810_PGETBL_CTL ; 
 int I810_PGETBL_ENABLED ; 
 int /*<<< orphan*/  I915_GMADDR ; 
 int INTEL_GTT_GEN ; 
 int PCI_BASE_ADDRESS_MEM_MASK ; 
 scalar_t__ USE_PCI_DMA_API ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 TYPE_3__ intel_private ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC12 (scalar_t__) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(void)
{
	u32 gma_addr;
	u32 gtt_map_size;
	int ret;

	ret = intel_private.driver->setup();
	if (ret != 0)
		return ret;

	intel_private.gtt_mappable_entries = FUNC4();
	intel_private.gtt_total_entries = FUNC7();

	/* save the PGETBL reg for resume */
	intel_private.PGETBL_save =
		FUNC12(intel_private.registers+I810_PGETBL_CTL)
			& ~I810_PGETBL_ENABLED;
	/* we only ever restore the register when enabling the PGTBL... */
	if (HAS_PGTBL_EN)
		intel_private.PGETBL_save |= I810_PGETBL_ENABLED;

	FUNC0(&intel_private.bridge_dev->dev,
			"detected gtt size: %dK total, %dK mappable\n",
			intel_private.gtt_total_entries * 4,
			intel_private.gtt_mappable_entries * 4);

	gtt_map_size = intel_private.gtt_total_entries * 4;

	intel_private.gtt = NULL;
	if (FUNC2())
		intel_private.gtt = FUNC9(intel_private.gtt_bus_addr,
					       gtt_map_size);
	if (intel_private.gtt == NULL)
		intel_private.gtt = FUNC8(intel_private.gtt_bus_addr,
					    gtt_map_size);
	if (intel_private.gtt == NULL) {
		intel_private.driver->cleanup();
		FUNC10(intel_private.registers);
		return -ENOMEM;
	}

	FUNC1();   /* FIXME: ? */

	intel_private.stolen_size = FUNC6();

	intel_private.needs_dmar = USE_PCI_DMA_API && INTEL_GTT_GEN > 2;

	ret = FUNC5();
	if (ret != 0) {
		FUNC3();
		return ret;
	}

	if (INTEL_GTT_GEN <= 2)
		FUNC11(intel_private.pcidev, I810_GMADDR,
				      &gma_addr);
	else
		FUNC11(intel_private.pcidev, I915_GMADDR,
				      &gma_addr);

	intel_private.gma_bus_addr = (gma_addr & PCI_BASE_ADDRESS_MEM_MASK);

	return 0;
}