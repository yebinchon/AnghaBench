#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {void* address_lower; void* address_upper; int /*<<< orphan*/  length; } ;
struct scu_sgl_element_pair {void* next_pair_lower; void* next_pair_upper; TYPE_2__ A; TYPE_2__ B; } ;
struct scatterlist {int dummy; } ;
struct sas_task {scalar_t__ num_scatter; int /*<<< orphan*/  total_xfer_len; int /*<<< orphan*/  data_dir; struct scatterlist* scatter; } ;
struct isci_request {int /*<<< orphan*/  zero_scatter_daddr; struct isci_host* isci_host; } ;
struct isci_host {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct scatterlist*) ; 
 struct sas_task* FUNC2 (struct isci_request*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 
 struct scu_sgl_element_pair* FUNC6 (struct isci_request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct isci_host*,struct isci_request*,scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct isci_request *ireq)
{
	struct isci_host *ihost = ireq->isci_host;
	struct sas_task *task = FUNC2(ireq);
	struct scatterlist *sg = NULL;
	dma_addr_t dma_addr;
	u32 sg_idx = 0;
	struct scu_sgl_element_pair *scu_sg   = NULL;
	struct scu_sgl_element_pair *prev_sg  = NULL;

	if (task->num_scatter > 0) {
		sg = task->scatter;

		while (sg) {
			scu_sg = FUNC6(ireq, sg_idx);
			FUNC1(&scu_sg->A, sg);
			sg = FUNC5(sg);
			if (sg) {
				FUNC1(&scu_sg->B, sg);
				sg = FUNC5(sg);
			} else
				FUNC4(&scu_sg->B, 0, sizeof(scu_sg->B));

			if (prev_sg) {
				dma_addr = FUNC7(ihost,
								   ireq,
								   sg_idx);

				prev_sg->next_pair_upper =
					FUNC8(dma_addr);
				prev_sg->next_pair_lower =
					FUNC3(dma_addr);
			}

			prev_sg = scu_sg;
			sg_idx++;
		}
	} else {	/* handle when no sg */
		scu_sg = FUNC6(ireq, sg_idx);

		dma_addr = FUNC0(&ihost->pdev->dev,
					  task->scatter,
					  task->total_xfer_len,
					  task->data_dir);

		ireq->zero_scatter_daddr = dma_addr;

		scu_sg->A.length = task->total_xfer_len;
		scu_sg->A.address_upper = FUNC8(dma_addr);
		scu_sg->A.address_lower = FUNC3(dma_addr);
	}

	if (scu_sg) {
		scu_sg->next_pair_upper = 0;
		scu_sg->next_pair_lower = 0;
	}
}