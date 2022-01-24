#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct efx_vf {unsigned int index; scalar_t__ evq0_count; int /*<<< orphan*/  buftbl_base; int /*<<< orphan*/  rxq_retry_count; int /*<<< orphan*/  rxq_retry_mask; int /*<<< orphan*/  flush_waitq; scalar_t__ txq_count; scalar_t__ rxq_count; int /*<<< orphan*/  rxq_mask; int /*<<< orphan*/  txq_mask; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int EFX_VF_BUFTBL_PER_VI ; 
 unsigned int EFX_VI_BASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRF_AZ_TX_FLUSH_DESCQ ; 
 int /*<<< orphan*/  FRF_AZ_TX_FLUSH_DESCQ_CMD ; 
 int /*<<< orphan*/  FR_AZ_TX_FLUSH_DESCQ ; 
 int /*<<< orphan*/  FR_BZ_EVQ_PTR_TBL ; 
 int /*<<< orphan*/  FR_BZ_RX_DESC_PTR_TBL ; 
 int /*<<< orphan*/  FR_BZ_TIMER_TBL ; 
 int /*<<< orphan*/  FR_BZ_TX_DESC_PTR_TBL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HZ ; 
 int /*<<< orphan*/  MC_CMD_FLUSH_RX_QUEUES ; 
 scalar_t__ MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM ; 
 int VFDI_RC_ENOMEM ; 
 int VFDI_RC_ETIMEDOUT ; 
 scalar_t__ VF_MAX_RX_QUEUES ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC9 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_vf*) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_vf*) ; 
 int /*<<< orphan*/  FUNC12 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC19 (struct efx_nic*) ; 
 scalar_t__ FUNC20 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC23(struct efx_vf *vf)
{
	struct efx_nic *efx = vf->efx;
	efx_oword_t reg;
	unsigned count = FUNC9(efx);
	unsigned vf_offset = EFX_VI_BASE + vf->index * FUNC9(efx);
	unsigned timeout = HZ;
	unsigned index, rxqs_count;
	__le32 *rxqs;
	int rc;

	FUNC0(VF_MAX_RX_QUEUES >
		     MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM);

	rxqs = FUNC15(count * sizeof(*rxqs), GFP_KERNEL);
	if (rxqs == NULL)
		return VFDI_RC_ENOMEM;

	FUNC16();
	FUNC19(efx);
	FUNC17();

	/* Flush all the initialized queues */
	rxqs_count = 0;
	for (index = 0; index < count; ++index) {
		if (FUNC21(index, vf->txq_mask)) {
			FUNC1(reg,
					     FRF_AZ_TX_FLUSH_DESCQ_CMD, 1,
					     FRF_AZ_TX_FLUSH_DESCQ,
					     vf_offset + index);
			FUNC12(efx, &reg, FR_AZ_TX_FLUSH_DESCQ);
		}
		if (FUNC21(index, vf->rxq_mask))
			rxqs[rxqs_count++] = FUNC6(vf_offset + index);
	}

	FUNC5(&vf->rxq_retry_count, 0);
	while (timeout && (vf->rxq_count || vf->txq_count)) {
		rc = FUNC7(efx, MC_CMD_FLUSH_RX_QUEUES, (u8 *)rxqs,
				  rxqs_count * sizeof(*rxqs), NULL, 0, NULL);
		FUNC3(rc < 0);

		timeout = FUNC22(vf->flush_waitq,
					     FUNC11(vf),
					     timeout);
		rxqs_count = 0;
		for (index = 0; index < count; ++index) {
			if (FUNC20(index, vf->rxq_retry_mask)) {
				FUNC4(&vf->rxq_retry_count);
				rxqs[rxqs_count++] =
					FUNC6(vf_offset + index);
			}
		}
	}

	FUNC16();
	FUNC18(efx);
	FUNC17();

	/* Irrespective of success/failure, fini the queues */
	FUNC2(reg);
	for (index = 0; index < count; ++index) {
		FUNC13(efx, &reg, FR_BZ_RX_DESC_PTR_TBL,
				 vf_offset + index);
		FUNC13(efx, &reg, FR_BZ_TX_DESC_PTR_TBL,
				 vf_offset + index);
		FUNC13(efx, &reg, FR_BZ_EVQ_PTR_TBL,
				 vf_offset + index);
		FUNC13(efx, &reg, FR_BZ_TIMER_TBL,
				 vf_offset + index);
	}
	FUNC8(efx, vf->buftbl_base, NULL,
		       EFX_VF_BUFTBL_PER_VI * FUNC9(efx));
	FUNC14(rxqs);
	FUNC10(vf);

	vf->evq0_count = 0;

	return timeout ? 0 : VFDI_RC_ETIMEDOUT;
}