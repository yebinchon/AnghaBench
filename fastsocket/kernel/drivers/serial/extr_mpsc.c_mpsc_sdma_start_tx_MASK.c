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
typedef  scalar_t__ ulong ;
struct mpsc_tx_desc {int /*<<< orphan*/  cmdstat; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mpsc_port_info {int txr_tail; scalar_t__ txr_p; scalar_t__ cache_mgmt; TYPE_1__ port; scalar_t__ txr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int MPSC_TXRE_SIZE ; 
 int SDMA_DESC_CMDSTAT_O ; 
 int SDMA_SDCM_STD ; 
 int SDMA_SDCM_TXD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mpsc_port_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mpsc_port_info*,struct mpsc_tx_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpsc_port_info*) ; 

__attribute__((used)) static void FUNC6(struct mpsc_port_info *pi)
{
	struct mpsc_tx_desc *txre, *txre_p;

	/* If tx isn't running & there's a desc ready to go, start it */
	if (!FUNC5(pi)) {
		txre = (struct mpsc_tx_desc *)(pi->txr
				+ (pi->txr_tail * MPSC_TXRE_SIZE));
		FUNC1(pi->port.dev, (void *)txre, MPSC_TXRE_SIZE,
				DMA_FROM_DEVICE);
#if defined(CONFIG_PPC32) && !defined(CONFIG_NOT_COHERENT_CACHE)
		if (pi->cache_mgmt) /* GT642[46]0 Res #COMM-2 */
			invalidate_dcache_range((ulong)txre,
					(ulong)txre + MPSC_TXRE_SIZE);
#endif

		if (FUNC0(txre->cmdstat) & SDMA_DESC_CMDSTAT_O) {
			txre_p = (struct mpsc_tx_desc *)
				(pi->txr_p + (pi->txr_tail * MPSC_TXRE_SIZE));

			FUNC4(pi, txre_p);
			FUNC3(pi, SDMA_SDCM_STD | SDMA_SDCM_TXD);
		}
	}
}