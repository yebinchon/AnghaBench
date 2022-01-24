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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  irq; scalar_t__ kauai_fcr; int /*<<< orphan*/  aapl_bus_id; int /*<<< orphan*/  node; int /*<<< orphan*/  mediabay; } ;
typedef  TYPE_1__ pmac_ide_hwif_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* feature_call ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IDE_WAKEUP_DELAY ; 
 int KAUAI_FCR_UATA_ENABLE ; 
 int KAUAI_FCR_UATA_RESET_N ; 
 int /*<<< orphan*/  PMAC_FTR_IDE_ENABLE ; 
 int /*<<< orphan*/  PMAC_FTR_IDE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__ ppc_md ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(pmac_ide_hwif_t *pmif)
{
	/* Hard reset & re-enable controller (do we really need to reset ? -BenH) */
	if (!pmif->mediabay) {
		ppc_md.feature_call(PMAC_FTR_IDE_RESET, pmif->node, pmif->aapl_bus_id, 1);
		ppc_md.feature_call(PMAC_FTR_IDE_ENABLE, pmif->node, pmif->aapl_bus_id, 1);
		FUNC2(10);
		ppc_md.feature_call(PMAC_FTR_IDE_RESET, pmif->node, pmif->aapl_bus_id, 0);

		/* Kauai has it different */
		if (pmif->kauai_fcr) {
			u32 fcr = FUNC3(pmif->kauai_fcr);
			fcr |= KAUAI_FCR_UATA_RESET_N | KAUAI_FCR_UATA_ENABLE;
			FUNC8(fcr, pmif->kauai_fcr);
		}

		FUNC2(FUNC1(IDE_WAKEUP_DELAY));
	}

	/* Sanitize drive timings */
	FUNC4(pmif);

	FUNC0(pmif->irq);

	return 0;
}