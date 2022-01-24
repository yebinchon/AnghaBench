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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct lpfc_rpi_hdr {int page_count; int start_rpi; int /*<<< orphan*/  list; int /*<<< orphan*/  len; struct lpfc_dmabuf* dmabuf; } ;
struct TYPE_4__ {int rpi_base; int max_rpi; } ;
struct TYPE_5__ {int next_rpi; int /*<<< orphan*/  lpfc_rpi_hdr_list; TYPE_1__ max_cfg_param; scalar_t__ extents_in_use; int /*<<< orphan*/  rpi_hdrs_in_use; } ;
struct lpfc_hba {TYPE_3__* pcidev; int /*<<< orphan*/  hbalock; TYPE_2__ sli4_hba; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPFC_HDR_TEMPLATE_SIZE ; 
 int LPFC_RPI_HDR_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_dmabuf*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct lpfc_rpi_hdr *
FUNC9(struct lpfc_hba *phba)
{
	uint16_t rpi_limit, curr_rpi_range;
	struct lpfc_dmabuf *dmabuf;
	struct lpfc_rpi_hdr *rpi_hdr;
	uint32_t rpi_count;

	/*
	 * If the SLI4 port supports extents, posting the rpi header isn't
	 * required.  Set the expected maximum count and let the actual value
	 * get set when extents are fully allocated.
	 */
	if (!phba->sli4_hba.rpi_hdrs_in_use)
		return NULL;
	if (phba->sli4_hba.extents_in_use)
		return NULL;

	/* The limit on the logical index is just the max_rpi count. */
	rpi_limit = phba->sli4_hba.max_cfg_param.rpi_base +
	phba->sli4_hba.max_cfg_param.max_rpi - 1;

	FUNC7(&phba->hbalock);
	/*
	 * Establish the starting RPI in this header block.  The starting
	 * rpi is normalized to a zero base because the physical rpi is
	 * port based.
	 */
	curr_rpi_range = phba->sli4_hba.next_rpi;
	FUNC8(&phba->hbalock);

	/*
	 * The port has a limited number of rpis. The increment here
	 * is LPFC_RPI_HDR_COUNT - 1 to account for the starting value
	 * and to allow the full max_rpi range per port.
	 */
	if ((curr_rpi_range + (LPFC_RPI_HDR_COUNT - 1)) > rpi_limit)
		rpi_count = rpi_limit - curr_rpi_range;
	else
		rpi_count = LPFC_RPI_HDR_COUNT;

	if (!rpi_count)
		return NULL;
	/*
	 * First allocate the protocol header region for the port.  The
	 * port expects a 4KB DMA-mapped memory region that is 4K aligned.
	 */
	dmabuf = FUNC4(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
	if (!dmabuf)
		return NULL;

	dmabuf->virt = FUNC1(&phba->pcidev->dev,
					  LPFC_HDR_TEMPLATE_SIZE,
					  &dmabuf->phys,
					  GFP_KERNEL);
	if (!dmabuf->virt) {
		rpi_hdr = NULL;
		goto err_free_dmabuf;
	}

	FUNC6(dmabuf->virt, 0, LPFC_HDR_TEMPLATE_SIZE);
	if (!FUNC0(dmabuf->phys, LPFC_HDR_TEMPLATE_SIZE)) {
		rpi_hdr = NULL;
		goto err_free_coherent;
	}

	/* Save the rpi header data for cleanup later. */
	rpi_hdr = FUNC4(sizeof(struct lpfc_rpi_hdr), GFP_KERNEL);
	if (!rpi_hdr)
		goto err_free_coherent;

	rpi_hdr->dmabuf = dmabuf;
	rpi_hdr->len = LPFC_HDR_TEMPLATE_SIZE;
	rpi_hdr->page_count = 1;
	FUNC7(&phba->hbalock);

	/* The rpi_hdr stores the logical index only. */
	rpi_hdr->start_rpi = curr_rpi_range;
	FUNC5(&rpi_hdr->list, &phba->sli4_hba.lpfc_rpi_hdr_list);

	/*
	 * The next_rpi stores the next logical module-64 rpi value used
	 * to post physical rpis in subsequent rpi postings.
	 */
	phba->sli4_hba.next_rpi += rpi_count;
	FUNC8(&phba->hbalock);
	return rpi_hdr;

 err_free_coherent:
	FUNC2(&phba->pcidev->dev, LPFC_HDR_TEMPLATE_SIZE,
			  dmabuf->virt, dmabuf->phys);
 err_free_dmabuf:
	FUNC3(dmabuf);
	return NULL;
}