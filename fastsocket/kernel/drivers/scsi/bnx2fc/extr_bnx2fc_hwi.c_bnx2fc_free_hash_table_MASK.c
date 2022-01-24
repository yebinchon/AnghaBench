#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct fcoe_hash_table_entry {int dummy; } ;
struct bnx2fc_hba {int hash_tbl_segment_count; int hash_tbl_pbl_dma; int /*<<< orphan*/ * hash_tbl_pbl; TYPE_1__* pcidev; int /*<<< orphan*/ ** hash_tbl_segments; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2FC_HASH_TBL_CHUNK_SIZE ; 
 int BNX2FC_MAX_ROWS_IN_HASH_TBL ; 
 int BNX2FC_NUM_MAX_SESS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bnx2fc_hba *hba)
{
	int i;
	int segment_count;
	int hash_table_size;
	u32 *pbl;

	segment_count = hba->hash_tbl_segment_count;
	hash_table_size = BNX2FC_NUM_MAX_SESS * BNX2FC_MAX_ROWS_IN_HASH_TBL *
		sizeof(struct fcoe_hash_table_entry);

	pbl = hba->hash_tbl_pbl;
	for (i = 0; i < segment_count; ++i) {
		dma_addr_t dma_address;

		dma_address = FUNC1(*pbl);
		++pbl;
		dma_address += ((u64)FUNC1(*pbl)) << 32;
		++pbl;
		FUNC0(&hba->pcidev->dev,
				  BNX2FC_HASH_TBL_CHUNK_SIZE,
				  hba->hash_tbl_segments[i],
				  dma_address);

	}

	if (hba->hash_tbl_pbl) {
		FUNC0(&hba->pcidev->dev, PAGE_SIZE,
				    hba->hash_tbl_pbl,
				    hba->hash_tbl_pbl_dma);
		hba->hash_tbl_pbl = NULL;
	}
}