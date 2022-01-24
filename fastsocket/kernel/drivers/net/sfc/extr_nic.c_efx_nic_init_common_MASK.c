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
struct TYPE_2__ {int /*<<< orphan*/  dma_addr; } ;
struct efx_nic {int tx_dc_base; int rx_dc_base; int irq_level; TYPE_1__ irq_status; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EFX_REV_FALCON_B0 ; 
 scalar_t__ EFX_REV_SIENA_A0 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct efx_nic*) ; 
 int /*<<< orphan*/  FFE_BZ_TX_PACE_RESERVED ; 
 int /*<<< orphan*/  FRF_AZ_ILL_ADR_INT_KER_EN ; 
 int /*<<< orphan*/  FRF_AZ_INT_ADR_KER ; 
 int /*<<< orphan*/  FRF_AZ_NORM_INT_VEC_DIS_KER ; 
 int /*<<< orphan*/  FRF_AZ_RBUF_OWN_INT_KER_EN ; 
 int /*<<< orphan*/  FRF_AZ_RX_DC_PF_LWM ; 
 int /*<<< orphan*/  FRF_AZ_RX_DC_SIZE ; 
 int /*<<< orphan*/  FRF_AZ_SRM_RX_DC_BASE_ADR ; 
 int /*<<< orphan*/  FRF_AZ_SRM_TX_DC_BASE_ADR ; 
 int /*<<< orphan*/  FRF_AZ_TBUF_OWN_INT_KER_EN ; 
 int /*<<< orphan*/  FRF_AZ_TX_DC_SIZE ; 
 int /*<<< orphan*/  FRF_AZ_TX_DIS_NON_IP_EV ; 
 int /*<<< orphan*/  FRF_AZ_TX_ONE_PKT_PER_Q ; 
 int /*<<< orphan*/  FRF_AZ_TX_PREF_THRESHOLD ; 
 int /*<<< orphan*/  FRF_AZ_TX_PREF_WD_TMR ; 
 int /*<<< orphan*/  FRF_AZ_TX_PUSH_EN ; 
 int /*<<< orphan*/  FRF_AZ_TX_RX_SPACER ; 
 int /*<<< orphan*/  FRF_AZ_TX_RX_SPACER_EN ; 
 int /*<<< orphan*/  FRF_AZ_TX_SOFT_EVT_EN ; 
 int /*<<< orphan*/  FRF_BZ_TX_FLUSH_MIN_LEN_EN ; 
 int /*<<< orphan*/  FRF_BZ_TX_PACE_BIN_TH ; 
 int /*<<< orphan*/  FRF_BZ_TX_PACE_FB_BASE ; 
 int /*<<< orphan*/  FRF_BZ_TX_PACE_SB_AF ; 
 int /*<<< orphan*/  FRF_BZ_TX_PACE_SB_NOT_AF ; 
 int /*<<< orphan*/  FRF_CZ_SRAM_PERR_INT_P_KER_EN ; 
 int /*<<< orphan*/  FR_AZ_FATAL_INTR_KER ; 
 int /*<<< orphan*/  FR_AZ_INT_ADR_KER ; 
 int /*<<< orphan*/  FR_AZ_RX_DC_CFG ; 
 int /*<<< orphan*/  FR_AZ_RX_DC_PF_WM ; 
 int /*<<< orphan*/  FR_AZ_SRM_RX_DC_CFG ; 
 int /*<<< orphan*/  FR_AZ_SRM_TX_DC_CFG ; 
 int /*<<< orphan*/  FR_AZ_TX_DC_CFG ; 
 int /*<<< orphan*/  FR_AZ_TX_RESERVED ; 
 int /*<<< orphan*/  FR_BZ_TX_PACE ; 
 int RX_DC_ENTRIES ; 
 int RX_DC_ENTRIES_ORDER ; 
 int TX_DC_ENTRIES ; 
 int TX_DC_ENTRIES_ORDER ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*) ; 
 scalar_t__ FUNC10 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC13(struct efx_nic *efx)
{
	efx_oword_t temp;

	/* Set positions of descriptor caches in SRAM. */
	FUNC3(temp, FRF_AZ_SRM_TX_DC_BASE_ADR, efx->tx_dc_base);
	FUNC12(efx, &temp, FR_AZ_SRM_TX_DC_CFG);
	FUNC3(temp, FRF_AZ_SRM_RX_DC_BASE_ADR, efx->rx_dc_base);
	FUNC12(efx, &temp, FR_AZ_SRM_RX_DC_CFG);

	/* Set TX descriptor cache size. */
	FUNC0(TX_DC_ENTRIES != (8 << TX_DC_ENTRIES_ORDER));
	FUNC3(temp, FRF_AZ_TX_DC_SIZE, TX_DC_ENTRIES_ORDER);
	FUNC12(efx, &temp, FR_AZ_TX_DC_CFG);

	/* Set RX descriptor cache size.  Set low watermark to size-8, as
	 * this allows most efficient prefetching.
	 */
	FUNC0(RX_DC_ENTRIES != (8 << RX_DC_ENTRIES_ORDER));
	FUNC3(temp, FRF_AZ_RX_DC_SIZE, RX_DC_ENTRIES_ORDER);
	FUNC12(efx, &temp, FR_AZ_RX_DC_CFG);
	FUNC3(temp, FRF_AZ_RX_DC_PF_LWM, RX_DC_ENTRIES - 8);
	FUNC12(efx, &temp, FR_AZ_RX_DC_PF_WM);

	/* Program INT_KER address */
	FUNC4(temp,
			     FRF_AZ_NORM_INT_VEC_DIS_KER,
			     FUNC1(efx),
			     FRF_AZ_INT_ADR_KER, efx->irq_status.dma_addr);
	FUNC12(efx, &temp, FR_AZ_INT_ADR_KER);

	if (FUNC8(efx) && !FUNC1(efx))
		/* Use an interrupt level unused by event queues */
		efx->irq_level = 0x1f;
	else
		/* Use a valid MSI-X vector */
		efx->irq_level = 0;

	/* Enable all the genuinely fatal interrupts.  (They are still
	 * masked by the overall interrupt mask, controlled by
	 * falcon_interrupts()).
	 *
	 * Note: All other fatal interrupts are enabled
	 */
	FUNC5(temp,
			     FRF_AZ_ILL_ADR_INT_KER_EN, 1,
			     FRF_AZ_RBUF_OWN_INT_KER_EN, 1,
			     FRF_AZ_TBUF_OWN_INT_KER_EN, 1);
	if (FUNC10(efx) >= EFX_REV_SIENA_A0)
		FUNC7(temp, FRF_CZ_SRAM_PERR_INT_P_KER_EN, 1);
	FUNC2(temp);
	FUNC12(efx, &temp, FR_AZ_FATAL_INTR_KER);

	FUNC9(efx);

	/* Disable the ugly timer-based TX DMA backoff and allow TX DMA to be
	 * controlled by the RX FIFO fill level. Set arbitration to one pkt/Q.
	 */
	FUNC11(efx, &temp, FR_AZ_TX_RESERVED);
	FUNC7(temp, FRF_AZ_TX_RX_SPACER, 0xfe);
	FUNC7(temp, FRF_AZ_TX_RX_SPACER_EN, 1);
	FUNC7(temp, FRF_AZ_TX_ONE_PKT_PER_Q, 1);
	FUNC7(temp, FRF_AZ_TX_PUSH_EN, 1);
	FUNC7(temp, FRF_AZ_TX_DIS_NON_IP_EV, 1);
	/* Enable SW_EV to inherit in char driver - assume harmless here */
	FUNC7(temp, FRF_AZ_TX_SOFT_EVT_EN, 1);
	/* Prefetch threshold 2 => fetch when descriptor cache half empty */
	FUNC7(temp, FRF_AZ_TX_PREF_THRESHOLD, 2);
	/* Disable hardware watchdog which can misfire */
	FUNC7(temp, FRF_AZ_TX_PREF_WD_TMR, 0x3fffff);
	/* Squash TX of packets of 16 bytes or less */
	if (FUNC10(efx) >= EFX_REV_FALCON_B0)
		FUNC7(temp, FRF_BZ_TX_FLUSH_MIN_LEN_EN, 1);
	FUNC12(efx, &temp, FR_AZ_TX_RESERVED);

	if (FUNC10(efx) >= EFX_REV_FALCON_B0) {
		FUNC6(temp,
				     /* Default values */
				     FRF_BZ_TX_PACE_SB_NOT_AF, 0x15,
				     FRF_BZ_TX_PACE_SB_AF, 0xb,
				     FRF_BZ_TX_PACE_FB_BASE, 0,
				     /* Allow large pace values in the
				      * fast bin. */
				     FRF_BZ_TX_PACE_BIN_TH,
				     FFE_BZ_TX_PACE_RESERVED);
		FUNC12(efx, &temp, FR_BZ_TX_PACE);
	}
}