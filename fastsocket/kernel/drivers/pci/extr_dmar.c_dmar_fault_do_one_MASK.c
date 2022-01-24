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
typedef  int u16 ;
struct intel_iommu {int dummy; } ;

/* Variables and functions */
 int INTR_REMAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(struct intel_iommu *iommu, int type,
		u8 fault_reason, u16 source_id, unsigned long long addr)
{
	const char *reason;
	int fault_type;

	reason = FUNC2(fault_reason, &fault_type);

	if (fault_type == INTR_REMAP)
		FUNC3("INTR-REMAP: Request device [[%02x:%02x.%d] "
		       "fault index %llx\n"
			"INTR-REMAP:[fault reason %02d] %s\n",
			(source_id >> 8), FUNC1(source_id & 0xFF),
			FUNC0(source_id & 0xFF), addr >> 48,
			fault_reason, reason);
	else
		FUNC3("DMAR:[%s] Request device [%02x:%02x.%d] "
		       "fault addr %llx \n"
		       "DMAR:[fault reason %02d] %s\n",
		       (type ? "DMA Read" : "DMA Write"),
		       (source_id >> 8), FUNC1(source_id & 0xFF),
		       FUNC0(source_id & 0xFF), addr, fault_reason, reason);
	return 0;
}