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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct lpfc_hba {TYPE_2__* ct_ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  virt; } ;
struct hbq_dmabuf {TYPE_1__ hbuf; } ;
struct fc_frame_header {int /*<<< orphan*/  fh_rx_id; int /*<<< orphan*/  fh_ox_id; } ;
struct TYPE_4__ {scalar_t__ valid; scalar_t__ rxid; scalar_t__ oxid; scalar_t__ SID; } ;

/* Variables and functions */
 int LPFC_CT_CTX_MAX ; 
 scalar_t__ UNSOL_INVALID ; 
 scalar_t__ UNSOL_VALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame_header*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct fc_frame_header*) ; 

int
FUNC3(struct lpfc_hba *phba, struct hbq_dmabuf *dmabuf)
{
	struct fc_frame_header fc_hdr;
	struct fc_frame_header *fc_hdr_ptr = &fc_hdr;
	int ctx_idx, handled = 0;
	uint16_t oxid, rxid;
	uint32_t sid;

	FUNC1(fc_hdr_ptr, dmabuf->hbuf.virt, sizeof(struct fc_frame_header));
	sid = FUNC2(fc_hdr_ptr);
	oxid = FUNC0(fc_hdr_ptr->fh_ox_id);
	rxid = FUNC0(fc_hdr_ptr->fh_rx_id);

	for (ctx_idx = 0; ctx_idx < LPFC_CT_CTX_MAX; ctx_idx++) {
		if (phba->ct_ctx[ctx_idx].valid != UNSOL_VALID)
			continue;
		if (phba->ct_ctx[ctx_idx].rxid != rxid)
			continue;
		if (phba->ct_ctx[ctx_idx].oxid != oxid)
			continue;
		if (phba->ct_ctx[ctx_idx].SID != sid)
			continue;
		phba->ct_ctx[ctx_idx].valid = UNSOL_INVALID;
		handled = 1;
	}
	return handled;
}