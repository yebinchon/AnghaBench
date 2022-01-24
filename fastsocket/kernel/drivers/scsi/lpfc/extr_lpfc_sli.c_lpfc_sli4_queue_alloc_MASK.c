#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union sli4_qe {int dummy; } sli4_qe ;
typedef  int uint32_t ;
struct lpfc_queue {int page_count; int entry_size; int entry_count; int entry_repost; struct lpfc_hba* phba; TYPE_4__* qe; int /*<<< orphan*/  page_list; int /*<<< orphan*/  child_list; int /*<<< orphan*/  list; } ;
struct TYPE_5__ {int if_page_sz; int /*<<< orphan*/  supported; } ;
struct TYPE_6__ {TYPE_1__ pc_sli4_params; } ;
struct lpfc_hba {TYPE_3__* pcidev; TYPE_2__ sli4_hba; } ;
struct lpfc_dmabuf {void* virt; int buffer_tag; int /*<<< orphan*/  list; int /*<<< orphan*/  phys; } ;
struct TYPE_8__ {void* address; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int LPFC_QUEUE_MIN_REPOST ; 
 int SLI4_PAGE_SIZE ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_dmabuf*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_queue*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 

struct lpfc_queue *
FUNC8(struct lpfc_hba *phba, uint32_t entry_size,
		      uint32_t entry_count)
{
	struct lpfc_queue *queue;
	struct lpfc_dmabuf *dmabuf;
	int x, total_qe_count;
	void *dma_pointer;
	uint32_t hw_page_size = phba->sli4_hba.pc_sli4_params.if_page_sz;

	if (!phba->sli4_hba.pc_sli4_params.supported)
		hw_page_size = SLI4_PAGE_SIZE;

	queue = FUNC4(sizeof(struct lpfc_queue) +
			(sizeof(union sli4_qe) * entry_count), GFP_KERNEL);
	if (!queue)
		return NULL;
	queue->page_count = (FUNC0(entry_size * entry_count,
			hw_page_size))/hw_page_size;
	FUNC1(&queue->list);
	FUNC1(&queue->page_list);
	FUNC1(&queue->child_list);
	for (x = 0, total_qe_count = 0; x < queue->page_count; x++) {
		dmabuf = FUNC4(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
		if (!dmabuf)
			goto out_fail;
		dmabuf->virt = FUNC2(&phba->pcidev->dev,
						  hw_page_size, &dmabuf->phys,
						  GFP_KERNEL);
		if (!dmabuf->virt) {
			FUNC3(dmabuf);
			goto out_fail;
		}
		FUNC7(dmabuf->virt, 0, hw_page_size);
		dmabuf->buffer_tag = x;
		FUNC5(&dmabuf->list, &queue->page_list);
		/* initialize queue's entry array */
		dma_pointer = dmabuf->virt;
		for (; total_qe_count < entry_count &&
		     dma_pointer < (hw_page_size + dmabuf->virt);
		     total_qe_count++, dma_pointer += entry_size) {
			queue->qe[total_qe_count].address = dma_pointer;
		}
	}
	queue->entry_size = entry_size;
	queue->entry_count = entry_count;

	/*
	 * entry_repost is calculated based on the number of entries in the
	 * queue. This works out except for RQs. If buffers are NOT initially
	 * posted for every RQE, entry_repost should be adjusted accordingly.
	 */
	queue->entry_repost = (entry_count >> 3);
	if (queue->entry_repost < LPFC_QUEUE_MIN_REPOST)
		queue->entry_repost = LPFC_QUEUE_MIN_REPOST;
	queue->phba = phba;

	return queue;
out_fail:
	FUNC6(queue);
	return NULL;
}