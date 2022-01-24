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
typedef  int u8 ;
typedef  int u64 ;
typedef  unsigned long u32 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_qp_context {int dummy; } ;
struct TYPE_2__ {int sq_pbase; int sq_vbase; int rq_pbase; void* rq_vbase; scalar_t__ q2_pbase; int /*<<< orphan*/ * q2_vbase; } ;
struct nes_qp {int qp_mem_size; int sq_kmapped; TYPE_1__ hwqp; scalar_t__ nesqp_context_pbase; int /*<<< orphan*/ * nesqp_context; scalar_t__ page; int /*<<< orphan*/ * pbl_vbase; scalar_t__ pbl_pbase; } ;
struct nes_pbl {int pbl_size; scalar_t__ pbl_pbase; int /*<<< orphan*/ * pbl_vbase; scalar_t__ page; } ;
struct nes_hw_qp_wqe {int dummy; } ;
struct nes_device {int /*<<< orphan*/  pcidev; struct nes_adapter* nesadapter; } ;
struct nes_adapter {int /*<<< orphan*/  pbl_lock; int /*<<< orphan*/  free_256pbl; } ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NES_DBG_QP ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nes_pbl*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct nes_qp *nesqp, struct nes_pbl *nespbl,
		struct nes_vnic *nesvnic, int sq_size, int rq_size)
{
	unsigned long flags;
	void *mem;
	__le64 *pbl = NULL;
	__le64 *tpbl;
	__le64 *pblbuffer;
	struct nes_device *nesdev = nesvnic->nesdev;
	struct nes_adapter *nesadapter = nesdev->nesadapter;
	u32 pbl_entries;
	u8 rq_pbl_entries;
	u8 sq_pbl_entries;

	pbl_entries = nespbl->pbl_size >> 3;
	FUNC6(NES_DBG_QP, "Userspace PBL, pbl_size=%u, pbl_entries = %d pbl_vbase=%p, pbl_pbase=%lx\n",
			nespbl->pbl_size, pbl_entries,
			(void *)nespbl->pbl_vbase,
			(unsigned long) nespbl->pbl_pbase);
	pbl = (__le64 *) nespbl->pbl_vbase; /* points to first pbl entry */
	/* now lets set the sq_vbase as well as rq_vbase addrs we will assign */
	/* the first pbl to be fro the rq_vbase... */
	rq_pbl_entries = (rq_size * sizeof(struct nes_hw_qp_wqe)) >> 12;
	sq_pbl_entries = (sq_size * sizeof(struct nes_hw_qp_wqe)) >> 12;
	nesqp->hwqp.sq_pbase = (FUNC3(((__le32 *)pbl)[0])) | ((u64)((FUNC3(((__le32 *)pbl)[1]))) << 32);
	if (!nespbl->page) {
		FUNC6(NES_DBG_QP, "QP nespbl->page is NULL \n");
		FUNC0(nespbl);
		return -ENOMEM;
	}

	nesqp->hwqp.sq_vbase = FUNC1(nespbl->page);
	nesqp->page = nespbl->page;
	if (!nesqp->hwqp.sq_vbase) {
		FUNC6(NES_DBG_QP, "QP sq_vbase kmap failed\n");
		FUNC0(nespbl);
		return -ENOMEM;
	}

	/* Now to get to sq.. we need to calculate how many */
	/* PBL entries were used by the rq.. */
	pbl += sq_pbl_entries;
	nesqp->hwqp.rq_pbase = (FUNC3(((__le32 *)pbl)[0])) | ((u64)((FUNC3(((__le32 *)pbl)[1]))) << 32);
	/* nesqp->hwqp.rq_vbase = bus_to_virt(*pbl); */
	/*nesqp->hwqp.rq_vbase = phys_to_virt(*pbl); */

	FUNC6(NES_DBG_QP, "QP sq_vbase= %p sq_pbase=%lx rq_vbase=%p rq_pbase=%lx\n",
		  nesqp->hwqp.sq_vbase, (unsigned long) nesqp->hwqp.sq_pbase,
		  nesqp->hwqp.rq_vbase, (unsigned long) nesqp->hwqp.rq_pbase);
	FUNC9(&nesadapter->pbl_lock, flags);
	if (!nesadapter->free_256pbl) {
		FUNC8(nesdev->pcidev, nespbl->pbl_size, nespbl->pbl_vbase,
				nespbl->pbl_pbase);
		FUNC10(&nesadapter->pbl_lock, flags);
		FUNC2(nesqp->page);
		FUNC0(nespbl);
		return -ENOMEM;
	}
	nesadapter->free_256pbl--;
	FUNC10(&nesadapter->pbl_lock, flags);

	nesqp->pbl_vbase = FUNC7(nesdev->pcidev, 256, &nesqp->pbl_pbase);
	pblbuffer = nesqp->pbl_vbase;
	if (!nesqp->pbl_vbase) {
		/* memory allocated during nes_reg_user_mr() */
		FUNC8(nesdev->pcidev, nespbl->pbl_size, nespbl->pbl_vbase,
				    nespbl->pbl_pbase);
		FUNC0(nespbl);
		FUNC9(&nesadapter->pbl_lock, flags);
		nesadapter->free_256pbl++;
		FUNC10(&nesadapter->pbl_lock, flags);
		FUNC2(nesqp->page);
		return -ENOMEM;
	}
	FUNC5(nesqp->pbl_vbase, 0, 256);
	/* fill in the page address in the pbl buffer.. */
	tpbl = pblbuffer + 16;
	pbl = (__le64 *)nespbl->pbl_vbase;
	while (sq_pbl_entries--)
		*tpbl++ = *pbl++;
	tpbl = pblbuffer;
	while (rq_pbl_entries--)
		*tpbl++ = *pbl++;

	/* done with memory allocated during nes_reg_user_mr() */
	FUNC8(nesdev->pcidev, nespbl->pbl_size, nespbl->pbl_vbase,
			    nespbl->pbl_pbase);
	FUNC0(nespbl);

	nesqp->qp_mem_size =
			FUNC4((u32)sizeof(struct nes_qp_context), ((u32)256)) + 256;     /* this is Q2 */
	/* Round up to a multiple of a page */
	nesqp->qp_mem_size += PAGE_SIZE - 1;
	nesqp->qp_mem_size &= ~(PAGE_SIZE - 1);

	mem = FUNC7(nesdev->pcidev, nesqp->qp_mem_size,
			&nesqp->hwqp.q2_pbase);

	if (!mem) {
		FUNC8(nesdev->pcidev, 256, nesqp->pbl_vbase, nesqp->pbl_pbase);
		nesqp->pbl_vbase = NULL;
		FUNC9(&nesadapter->pbl_lock, flags);
		nesadapter->free_256pbl++;
		FUNC10(&nesadapter->pbl_lock, flags);
		FUNC2(nesqp->page);
		return -ENOMEM;
	}
	nesqp->sq_kmapped = 1;
	nesqp->hwqp.q2_vbase = mem;
	mem += 256;
	FUNC5(nesqp->hwqp.q2_vbase, 0, 256);
	nesqp->nesqp_context = mem;
	FUNC5(nesqp->nesqp_context, 0, sizeof(*nesqp->nesqp_context));
	nesqp->nesqp_context_pbase = nesqp->hwqp.q2_pbase + 256;

	return 0;
}