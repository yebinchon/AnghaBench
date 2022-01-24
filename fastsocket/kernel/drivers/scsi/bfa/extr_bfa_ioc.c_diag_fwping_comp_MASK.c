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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct bfi_diag_fwping_rsp_s {scalar_t__ data; scalar_t__ dma_status; } ;
struct TYPE_4__ {int count; scalar_t__ data; scalar_t__ lock; void* status; int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cbfn ) (int /*<<< orphan*/ ,void*) ;TYPE_1__* result; scalar_t__ dbuf_kva; } ;
struct bfa_diag_s {TYPE_2__ fwping; } ;
struct TYPE_3__ {void* dmastatus; } ;

/* Variables and functions */
 void* BFA_STATUS_DATACORRUPTED ; 
 void* BFA_STATUS_HDMA_FAILED ; 
 scalar_t__ BFA_STATUS_OK ; 
 int BFI_DIAG_DMA_BUF_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_diag_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC5(struct bfa_diag_s *diag,
		 struct bfi_diag_fwping_rsp_s *diag_rsp)
{
	u32	rsp_data = diag_rsp->data;
	u8	rsp_dma_status = diag_rsp->dma_status;

	FUNC0(diag, rsp_data);
	FUNC0(diag, rsp_dma_status);

	if (rsp_dma_status == BFA_STATUS_OK) {
		u32	i, pat;
		pat = (diag->fwping.count & 0x1) ? ~(diag->fwping.data) :
			diag->fwping.data;
		/* Check mbox data */
		if (diag->fwping.data != rsp_data) {
			FUNC0(diag, rsp_data);
			diag->fwping.result->dmastatus =
					BFA_STATUS_DATACORRUPTED;
			diag->fwping.status = BFA_STATUS_DATACORRUPTED;
			diag->fwping.cbfn(diag->fwping.cbarg,
					diag->fwping.status);
			diag->fwping.lock = 0;
			return;
		}
		/* Check dma pattern */
		for (i = 0; i < (BFI_DIAG_DMA_BUF_SZ >> 2); i++) {
			if (*((u32 *)diag->fwping.dbuf_kva + i) != pat) {
				FUNC0(diag, i);
				FUNC0(diag, pat);
				FUNC0(diag,
					*((u32 *)diag->fwping.dbuf_kva + i));
				diag->fwping.result->dmastatus =
						BFA_STATUS_DATACORRUPTED;
				diag->fwping.status = BFA_STATUS_DATACORRUPTED;
				diag->fwping.cbfn(diag->fwping.cbarg,
						diag->fwping.status);
				diag->fwping.lock = 0;
				return;
			}
		}
		diag->fwping.result->dmastatus = BFA_STATUS_OK;
		diag->fwping.status = BFA_STATUS_OK;
		diag->fwping.cbfn(diag->fwping.cbarg, diag->fwping.status);
		diag->fwping.lock = 0;
	} else {
		diag->fwping.status = BFA_STATUS_HDMA_FAILED;
		diag->fwping.cbfn(diag->fwping.cbarg, diag->fwping.status);
		diag->fwping.lock = 0;
	}
}