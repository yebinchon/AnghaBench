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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {unsigned int index; unsigned int buf_count; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__ init_evq; } ;
struct vfdi_req {TYPE_3__ u; } ;
struct TYPE_4__ {struct vfdi_req* addr; } ;
struct efx_vf {unsigned int evq0_count; int /*<<< orphan*/  evq0_addrs; int /*<<< orphan*/  pci_name; TYPE_1__ buf; struct efx_nic* efx; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct efx_vf*,unsigned int) ; 
 int /*<<< orphan*/  EFX_MAX_VF_EVQ_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FFE_CZ_TIMER_MODE_DIS ; 
 int /*<<< orphan*/  FRF_AZ_EVQ_BUF_BASE_ID ; 
 int /*<<< orphan*/  FRF_AZ_EVQ_EN ; 
 int /*<<< orphan*/  FRF_AZ_EVQ_SIZE ; 
 int /*<<< orphan*/  FRF_CZ_HOST_NOTIFY_MODE ; 
 int /*<<< orphan*/  FRF_CZ_TIMER_MODE ; 
 int /*<<< orphan*/  FRF_CZ_TIMER_Q_EN ; 
 int /*<<< orphan*/  FR_BZ_EVQ_PTR_TBL ; 
 int /*<<< orphan*/  FR_BZ_TIMER_TBL ; 
 int VFDI_RC_EINVAL ; 
 int VFDI_RC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (struct efx_vf*,unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct efx_nic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct efx_vf *vf)
{
	struct efx_nic *efx = vf->efx;
	struct vfdi_req *req = vf->buf.addr;
	unsigned vf_evq = req->u.init_evq.index;
	unsigned buf_count = req->u.init_evq.buf_count;
	unsigned abs_evq = FUNC3(vf, vf_evq);
	unsigned buftbl = FUNC0(vf, vf_evq);
	efx_oword_t reg;

	if (FUNC5(efx, vf_evq) ||
	    FUNC4(buf_count, EFX_MAX_VF_EVQ_SIZE)) {
		if (FUNC9())
			FUNC10(efx, hw, efx->net_dev,
				  "ERROR: Invalid INIT_EVQ from %s: evq %d bufs %d\n",
				  vf->pci_name, vf_evq, buf_count);
		return VFDI_RC_EINVAL;
	}

	FUNC6(efx, buftbl, req->u.init_evq.addr, buf_count);

	FUNC1(reg,
			     FRF_CZ_TIMER_Q_EN, 1,
			     FRF_CZ_HOST_NOTIFY_MODE, 0,
			     FRF_CZ_TIMER_MODE, FFE_CZ_TIMER_MODE_DIS);
	FUNC7(efx, &reg, FR_BZ_TIMER_TBL, abs_evq);
	FUNC1(reg,
			     FRF_AZ_EVQ_EN, 1,
			     FRF_AZ_EVQ_SIZE, FUNC2(buf_count),
			     FRF_AZ_EVQ_BUF_BASE_ID, buftbl);
	FUNC7(efx, &reg, FR_BZ_EVQ_PTR_TBL, abs_evq);

	if (vf_evq == 0) {
		FUNC8(vf->evq0_addrs, req->u.init_evq.addr,
		       buf_count * sizeof(u64));
		vf->evq0_count = buf_count;
	}

	return VFDI_RC_SUCCESS;
}