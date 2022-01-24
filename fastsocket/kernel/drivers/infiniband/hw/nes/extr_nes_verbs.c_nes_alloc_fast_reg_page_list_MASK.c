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
typedef  int /*<<< orphan*/  u64 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct TYPE_2__ {scalar_t__ paddr; int /*<<< orphan*/  kva; } ;
struct ib_fast_reg_page_list {int max_page_list_len; int /*<<< orphan*/ * page_list; } ;
struct nes_ib_fast_reg_page_list {TYPE_1__ nes_wqe_pbl; struct ib_fast_reg_page_list ibfrpl; int /*<<< orphan*/  pbl; } ;
struct nes_device {int /*<<< orphan*/  pcidev; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_fast_reg_page_list* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NES_4K_PBL_CHUNK_SIZE ; 
 int /*<<< orphan*/  NES_DBG_MR ; 
 int /*<<< orphan*/  FUNC1 (struct nes_ib_fast_reg_page_list*) ; 
 struct nes_ib_fast_reg_page_list* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct nes_ib_fast_reg_page_list*,struct ib_fast_reg_page_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 struct nes_vnic* FUNC5 (struct ib_device*) ; 

__attribute__((used)) static struct ib_fast_reg_page_list *FUNC6(
							struct ib_device *ibdev,
							int page_list_len)
{
	struct nes_vnic *nesvnic = FUNC5(ibdev);
	struct nes_device *nesdev = nesvnic->nesdev;
	struct ib_fast_reg_page_list *pifrpl;
	struct nes_ib_fast_reg_page_list *pnesfrpl;

	if (page_list_len > (NES_4K_PBL_CHUNK_SIZE / sizeof(u64)))
		return FUNC0(-E2BIG);
	/*
	 * Allocate the ib_fast_reg_page_list structure, the
	 * nes_fast_bpl structure, and the PLB table.
	 */
	pnesfrpl = FUNC2(sizeof(struct nes_ib_fast_reg_page_list) +
			   page_list_len * sizeof(u64), GFP_KERNEL);

	if (!pnesfrpl)
		return FUNC0(-ENOMEM);

	pifrpl = &pnesfrpl->ibfrpl;
	pifrpl->page_list = &pnesfrpl->pbl;
	pifrpl->max_page_list_len = page_list_len;
	/*
	 * Allocate the WQE PBL
	 */
	pnesfrpl->nes_wqe_pbl.kva = FUNC4(nesdev->pcidev,
							 page_list_len * sizeof(u64),
							 &pnesfrpl->nes_wqe_pbl.paddr);

	if (!pnesfrpl->nes_wqe_pbl.kva) {
		FUNC1(pnesfrpl);
		return FUNC0(-ENOMEM);
	}
	FUNC3(NES_DBG_MR, "nes_alloc_fast_reg_pbl: nes_frpl = %p, "
		  "ibfrpl = %p, ibfrpl.page_list = %p, pbl.kva = %p, "
		  "pbl.paddr = %llx\n", pnesfrpl, &pnesfrpl->ibfrpl,
		  pnesfrpl->ibfrpl.page_list, pnesfrpl->nes_wqe_pbl.kva,
		  (unsigned long long) pnesfrpl->nes_wqe_pbl.paddr);

	return pifrpl;
}