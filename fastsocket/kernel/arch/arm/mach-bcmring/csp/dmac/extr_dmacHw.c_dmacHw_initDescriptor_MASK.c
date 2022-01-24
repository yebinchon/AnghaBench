#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {void* hi; } ;
struct TYPE_6__ {int llpPhy; int llp; TYPE_1__ ctl; } ;
typedef  TYPE_2__ dmacHw_DESC_t ;
struct TYPE_7__ {int virt2PhyOffset; int num; TYPE_2__* pHead; int /*<<< orphan*/  pProg; TYPE_2__* pEnd; TYPE_2__* pTail; TYPE_2__* pFree; } ;
typedef  TYPE_3__ dmacHw_DESC_RING_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* dmacHw_DESC_FREE ; 
 int /*<<< orphan*/  dmacHw_DESC_INIT ; 
 TYPE_3__* FUNC1 (void*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 

int FUNC4(void *pDescriptorVirt,	/*  [ IN ] Virtual address of uncahced buffer allocated to form descriptor ring */
			  uint32_t descriptorPhyAddr,	/*  [ IN ] Physical address of pDescriptorVirt (descriptor buffer) */
			  uint32_t len,	/*  [ IN ] Size of the pBuf */
			  uint32_t num	/*  [ IN ] Number of descriptor in the ring */
    ) {
	uint32_t i;
	dmacHw_DESC_RING_t *pRing;
	dmacHw_DESC_t *pDesc;

	/* Check the alignment of the descriptor */
	if ((uint32_t) pDescriptorVirt & 0x00000003) {
		FUNC0(0);
		return -1;
	}

	/* Check if enough space has been allocated for descriptor ring */
	if (len < FUNC2(num)) {
		return -1;
	}

	pRing = FUNC1(pDescriptorVirt);
	pRing->pHead =
	    (dmacHw_DESC_t *) ((uint32_t) pRing + sizeof(dmacHw_DESC_RING_t));
	pRing->pFree = pRing->pTail = pRing->pEnd = pRing->pHead;
	pRing->pProg = dmacHw_DESC_INIT;
	/* Initialize link item chain, starting from the head */
	pDesc = pRing->pHead;
	/* Find the offset between virtual to physical address */
	pRing->virt2PhyOffset = (uint32_t) pDescriptorVirt - descriptorPhyAddr;

	/* Form the descriptor ring */
	for (i = 0; i < num - 1; i++) {
		/* Clear link list item */
		FUNC3((void *)pDesc, 0, sizeof(dmacHw_DESC_t));
		/* Point to the next item in the physical address */
		pDesc->llpPhy = (uint32_t) (pDesc + 1) - pRing->virt2PhyOffset;
		/* Point to the next item in the virtual address */
		pDesc->llp = (uint32_t) (pDesc + 1);
		/* Mark descriptor is ready to use */
		pDesc->ctl.hi = dmacHw_DESC_FREE;
		/* Look into next link list item */
		pDesc++;
	}

	/* Clear last link list item */
	FUNC3((void *)pDesc, 0, sizeof(dmacHw_DESC_t));
	/* Last item pointing to the first item in the
	   physical address to complete the ring */
	pDesc->llpPhy = (uint32_t) pRing->pHead - pRing->virt2PhyOffset;
	/* Last item pointing to the first item in the
	   virtual address to complete the ring
	 */
	pDesc->llp = (uint32_t) pRing->pHead;
	/* Mark descriptor is ready to use */
	pDesc->ctl.hi = dmacHw_DESC_FREE;
	/* Set the number of descriptors in the ring */
	pRing->num = num;
	return 0;
}