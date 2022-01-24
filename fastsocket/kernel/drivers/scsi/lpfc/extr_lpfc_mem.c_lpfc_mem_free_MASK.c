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
struct lpfc_dma_pool {int current_count; TYPE_1__* elements; } ;
struct lpfc_hba {int /*<<< orphan*/ * lpfc_scsi_dma_buf_pool; int /*<<< orphan*/ * lpfc_mbuf_pool; int /*<<< orphan*/ * mbox_mem_pool; int /*<<< orphan*/ * nlp_mem_pool; int /*<<< orphan*/ * rrq_pool; int /*<<< orphan*/ * lpfc_hbq_pool; int /*<<< orphan*/ * lpfc_hrb_pool; int /*<<< orphan*/ * lpfc_drb_pool; struct lpfc_dma_pool lpfc_mbuf_safety_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct lpfc_hba *phba)
{
	int i;
	struct lpfc_dma_pool *pool = &phba->lpfc_mbuf_safety_pool;

	/* Free HBQ pools */
	FUNC1(phba);
	if (phba->lpfc_drb_pool)
		FUNC3(phba->lpfc_drb_pool);
	phba->lpfc_drb_pool = NULL;
	if (phba->lpfc_hrb_pool)
		FUNC3(phba->lpfc_hrb_pool);
	phba->lpfc_hrb_pool = NULL;

	if (phba->lpfc_hbq_pool)
		FUNC3(phba->lpfc_hbq_pool);
	phba->lpfc_hbq_pool = NULL;

	if (phba->rrq_pool)
		FUNC2(phba->rrq_pool);
	phba->rrq_pool = NULL;

	/* Free NLP memory pool */
	FUNC2(phba->nlp_mem_pool);
	phba->nlp_mem_pool = NULL;

	/* Free mbox memory pool */
	FUNC2(phba->mbox_mem_pool);
	phba->mbox_mem_pool = NULL;

	/* Free MBUF memory pool */
	for (i = 0; i < pool->current_count; i++)
		FUNC4(phba->lpfc_mbuf_pool, pool->elements[i].virt,
			      pool->elements[i].phys);
	FUNC0(pool->elements);

	FUNC3(phba->lpfc_mbuf_pool);
	phba->lpfc_mbuf_pool = NULL;

	/* Free DMA buffer memory pool */
	FUNC3(phba->lpfc_scsi_dma_buf_pool);
	phba->lpfc_scsi_dma_buf_pool = NULL;

	return;
}