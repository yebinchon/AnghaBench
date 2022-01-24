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
struct iommu_table_cb {unsigned long itc_busno; unsigned char itc_slotno; unsigned char itc_virtbus; int itc_size; int /*<<< orphan*/  itc_index; int /*<<< orphan*/  itc_offset; } ;
struct iommu_table {int it_size; unsigned long it_busno; int it_blocksize; int /*<<< orphan*/  it_type; int /*<<< orphan*/  it_index; int /*<<< orphan*/  it_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TCE_ENTRY_SIZE ; 
 int TCE_PAGE_SIZE ; 
 int /*<<< orphan*/  TCE_PCI ; 
 int /*<<< orphan*/  TCE_VB ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_table_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_table_cb*) ; 
 struct iommu_table_cb* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void FUNC5(unsigned long busno,
				  unsigned char slotno,
				  unsigned char virtbus,
				  struct iommu_table* tbl)
{
	struct iommu_table_cb *parms;

	parms = FUNC3(sizeof(*parms), GFP_KERNEL);
	if (parms == NULL)
		FUNC4("PCI_DMA: TCE Table Allocation failed.");

	parms->itc_busno = busno;
	parms->itc_slotno = slotno;
	parms->itc_virtbus = virtbus;

	FUNC0(FUNC1(parms));

	if (parms->itc_size == 0)
		FUNC4("PCI_DMA: parms->size is zero, parms is 0x%p", parms);

	/* itc_size is in pages worth of table, it_size is in # of entries */
	tbl->it_size = (parms->itc_size * TCE_PAGE_SIZE) / TCE_ENTRY_SIZE;
	tbl->it_busno = parms->itc_busno;
	tbl->it_offset = parms->itc_offset;
	tbl->it_index = parms->itc_index;
	tbl->it_blocksize = 1;
	tbl->it_type = virtbus ? TCE_VB : TCE_PCI;

	FUNC2(parms);
}