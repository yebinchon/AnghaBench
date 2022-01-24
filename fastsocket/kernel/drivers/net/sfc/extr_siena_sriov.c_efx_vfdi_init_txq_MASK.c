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
struct TYPE_5__ {unsigned int index; unsigned int evq; unsigned int buf_count; unsigned int label; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__ init_txq; } ;
struct vfdi_req {TYPE_3__ u; } ;
struct TYPE_4__ {struct vfdi_req* addr; } ;
struct efx_vf {scalar_t__ tx_filter_mode; int /*<<< orphan*/  txq_lock; int /*<<< orphan*/  txq_count; int /*<<< orphan*/  txq_mask; int /*<<< orphan*/  pci_name; TYPE_1__ buf; struct efx_nic* efx; } ;
struct efx_nic {int /*<<< orphan*/  vi_scale; int /*<<< orphan*/  net_dev; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct efx_vf*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EFX_MAX_DMAQ_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FRF_AZ_TX_DESCQ_BUF_BASE_ID ; 
 int /*<<< orphan*/  FRF_AZ_TX_DESCQ_EN ; 
 int /*<<< orphan*/  FRF_AZ_TX_DESCQ_EVQ_ID ; 
 int /*<<< orphan*/  FRF_AZ_TX_DESCQ_LABEL ; 
 int /*<<< orphan*/  FRF_AZ_TX_DESCQ_SIZE ; 
 int /*<<< orphan*/  FRF_BZ_TX_NON_IP_DROP_DIS ; 
 int /*<<< orphan*/  FRF_CZ_TX_DPT_ETH_FILT_EN ; 
 int /*<<< orphan*/  FRF_CZ_TX_DPT_Q_MASK_WIDTH ; 
 int /*<<< orphan*/  FR_BZ_TX_DESC_PTR_TBL ; 
 int VFDI_RC_EINVAL ; 
 int VFDI_RC_SUCCESS ; 
 scalar_t__ VF_TX_FILTER_ON ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_vf*,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct efx_nic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 unsigned int vf_max_tx_channels ; 

__attribute__((used)) static int FUNC15(struct efx_vf *vf)
{
	struct efx_nic *efx = vf->efx;
	struct vfdi_req *req = vf->buf.addr;
	unsigned vf_txq = req->u.init_txq.index;
	unsigned vf_evq = req->u.init_txq.evq;
	unsigned buf_count = req->u.init_txq.buf_count;
	unsigned buftbl = FUNC0(vf, vf_txq);
	unsigned label, eth_filt_en;
	efx_oword_t reg;

	if (FUNC7(efx, vf_evq) || FUNC7(efx, vf_txq) ||
	    vf_txq >= vf_max_tx_channels ||
	    FUNC6(buf_count, EFX_MAX_DMAQ_SIZE)) {
		if (FUNC13())
			FUNC14(efx, hw, efx->net_dev,
				  "ERROR: Invalid INIT_TXQ from %s: txq %d evq %d "
				  "buf_count %d\n", vf->pci_name, vf_txq,
				  vf_evq, buf_count);
		return VFDI_RC_EINVAL;
	}

	FUNC11(&vf->txq_lock);
	if (FUNC4(req->u.init_txq.index, vf->txq_mask))
		++vf->txq_count;
	FUNC12(&vf->txq_lock);
	FUNC8(efx, buftbl, req->u.init_txq.addr, buf_count);

	eth_filt_en = vf->tx_filter_mode == VF_TX_FILTER_ON;

	label = req->u.init_txq.label & FUNC1(FRF_AZ_TX_DESCQ_LABEL);
	FUNC2(reg,
			     FRF_CZ_TX_DPT_Q_MASK_WIDTH, FUNC10(efx->vi_scale, 1U),
			     FRF_CZ_TX_DPT_ETH_FILT_EN, eth_filt_en,
			     FRF_AZ_TX_DESCQ_EN, 1,
			     FRF_AZ_TX_DESCQ_BUF_BASE_ID, buftbl,
			     FRF_AZ_TX_DESCQ_EVQ_ID, FUNC5(vf, vf_evq),
			     FRF_AZ_TX_DESCQ_LABEL, label,
			     FRF_AZ_TX_DESCQ_SIZE, FUNC3(buf_count),
			     FRF_BZ_TX_NON_IP_DROP_DIS, 1);
	FUNC9(efx, &reg, FR_BZ_TX_DESC_PTR_TBL,
			 FUNC5(vf, vf_txq));

	return VFDI_RC_SUCCESS;
}