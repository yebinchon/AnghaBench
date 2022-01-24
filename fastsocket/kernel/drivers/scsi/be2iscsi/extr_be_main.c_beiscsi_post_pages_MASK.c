#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mem_array {int size; } ;
struct iscsi_sge {int dummy; } ;
struct TYPE_4__ {int iscsi_icd_start; } ;
struct TYPE_3__ {int num_sge_per_io; } ;
struct beiscsi_hba {int /*<<< orphan*/  ctrl; TYPE_2__ fw_config; TYPE_1__ params; struct be_mem_descriptor* init_mem; } ;
struct be_mem_descriptor {unsigned int num_elements; struct mem_array* mem_array; } ;
struct be_dma_mem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  HWI_MEM_SGE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct be_dma_mem*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,struct mem_array*,struct be_dma_mem*) ; 

__attribute__((used)) static int
FUNC3(struct beiscsi_hba *phba)
{
	struct be_mem_descriptor *mem_descr;
	struct mem_array *pm_arr;
	unsigned int page_offset, i;
	struct be_dma_mem sgl;
	int status;

	mem_descr = phba->init_mem;
	mem_descr += HWI_MEM_SGE;
	pm_arr = mem_descr->mem_array;

	page_offset = (sizeof(struct iscsi_sge) * phba->params.num_sge_per_io *
			phba->fw_config.iscsi_icd_start) / PAGE_SIZE;
	for (i = 0; i < mem_descr->num_elements; i++) {
		FUNC2(phba, pm_arr, &sgl);
		status = FUNC0(&phba->ctrl, &sgl,
						page_offset,
						(pm_arr->size / PAGE_SIZE));
		page_offset += pm_arr->size / PAGE_SIZE;
		if (status != 0) {
			FUNC1(phba, KERN_ERR, BEISCSI_LOG_INIT,
				    "BM_%d : post sgl failed.\n");
			return status;
		}
		pm_arr++;
	}
	FUNC1(phba, KERN_INFO, BEISCSI_LOG_INIT,
		    "BM_%d : POSTED PAGES\n");
	return 0;
}