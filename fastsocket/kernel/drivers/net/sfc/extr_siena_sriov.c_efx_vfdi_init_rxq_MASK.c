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
struct TYPE_5__ {unsigned int index; unsigned int evq; unsigned int buf_count; unsigned int label; int flags; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__ init_rxq; } ;
struct vfdi_req {TYPE_3__ u; } ;
struct TYPE_4__ {struct vfdi_req* addr; } ;
struct efx_vf {int /*<<< orphan*/  rxq_count; int /*<<< orphan*/  rxq_mask; int /*<<< orphan*/  pci_name; TYPE_1__ buf; struct efx_nic* efx; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct efx_vf*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EFX_MAX_DMAQ_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FRF_AZ_RX_DESCQ_BUF_BASE_ID ; 
 int /*<<< orphan*/  FRF_AZ_RX_DESCQ_EN ; 
 int /*<<< orphan*/  FRF_AZ_RX_DESCQ_EVQ_ID ; 
 int /*<<< orphan*/  FRF_AZ_RX_DESCQ_JUMBO ; 
 int /*<<< orphan*/  FRF_AZ_RX_DESCQ_LABEL ; 
 int /*<<< orphan*/  FRF_AZ_RX_DESCQ_SIZE ; 
 int /*<<< orphan*/  FR_BZ_RX_DESC_PTR_TBL ; 
 int VFDI_RC_EINVAL ; 
 int VFDI_RC_SUCCESS ; 
 int VFDI_RXQ_FLAG_SCATTER_EN ; 
 unsigned int VF_MAX_RX_QUEUES ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_vf*,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct efx_nic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct efx_vf *vf)
{
	struct efx_nic *efx = vf->efx;
	struct vfdi_req *req = vf->buf.addr;
	unsigned vf_rxq = req->u.init_rxq.index;
	unsigned vf_evq = req->u.init_rxq.evq;
	unsigned buf_count = req->u.init_rxq.buf_count;
	unsigned buftbl = FUNC0(vf, vf_rxq);
	unsigned label;
	efx_oword_t reg;

	if (FUNC7(efx, vf_evq) || FUNC7(efx, vf_rxq) ||
	    vf_rxq >= VF_MAX_RX_QUEUES ||
	    FUNC6(buf_count, EFX_MAX_DMAQ_SIZE)) {
		if (FUNC10())
			FUNC11(efx, hw, efx->net_dev,
				  "ERROR: Invalid INIT_RXQ from %s: rxq %d evq %d "
				  "buf_count %d\n", vf->pci_name, vf_rxq,
				  vf_evq, buf_count);
		return VFDI_RC_EINVAL;
	}
	if (FUNC4(req->u.init_rxq.index, vf->rxq_mask))
		++vf->rxq_count;
	FUNC8(efx, buftbl, req->u.init_rxq.addr, buf_count);

	label = req->u.init_rxq.label & FUNC1(FRF_AZ_RX_DESCQ_LABEL);
	FUNC2(reg,
			     FRF_AZ_RX_DESCQ_BUF_BASE_ID, buftbl,
			     FRF_AZ_RX_DESCQ_EVQ_ID, FUNC5(vf, vf_evq),
			     FRF_AZ_RX_DESCQ_LABEL, label,
			     FRF_AZ_RX_DESCQ_SIZE, FUNC3(buf_count),
			     FRF_AZ_RX_DESCQ_JUMBO,
			     !!(req->u.init_rxq.flags &
				VFDI_RXQ_FLAG_SCATTER_EN),
			     FRF_AZ_RX_DESCQ_EN, 1);
	FUNC9(efx, &reg, FR_BZ_RX_DESC_PTR_TBL,
			 FUNC5(vf, vf_rxq));

	return VFDI_RC_SUCCESS;
}