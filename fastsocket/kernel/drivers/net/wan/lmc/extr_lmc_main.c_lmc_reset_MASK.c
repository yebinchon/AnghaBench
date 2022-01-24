#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  resetCount; } ;
struct TYPE_12__ {int /*<<< orphan*/  lmc_device; TYPE_2__ extra_stats; TYPE_1__* lmc_media; int /*<<< orphan*/  lmc_gpio; int /*<<< orphan*/  lmc_miireg16; } ;
typedef  TYPE_3__ lmc_softc_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* init ) (TYPE_3__* const) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LMC_GEP_RESET ; 
 int /*<<< orphan*/  LMC_MII16_FIFO_RESET ; 
 int /*<<< orphan*/  csr_gp ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__* const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(lmc_softc_t * const sc) /*fold00*/
{
    FUNC4(sc->lmc_device, "lmc_reset in");
    sc->lmc_miireg16 |= LMC_MII16_FIFO_RESET;
    FUNC3(sc, 0, 16, sc->lmc_miireg16);

    sc->lmc_miireg16 &= ~LMC_MII16_FIFO_RESET;
    FUNC3(sc, 0, 16, sc->lmc_miireg16);

    /*
     * make some of the GPIO pins be outputs
     */
    FUNC2(sc, LMC_GEP_RESET);

    /*
     * RESET low to force state reset.  This also forces
     * the transmitter clock to be internal, but we expect to reset
     * that later anyway.
     */
    sc->lmc_gpio &= ~(LMC_GEP_RESET);
    FUNC0(sc, csr_gp, sc->lmc_gpio);

    /*
     * hold for more than 10 microseconds
     */
    FUNC6(50);

    /*
     * stop driving Xilinx-related signals
     */
    FUNC1(sc, LMC_GEP_RESET);

    /*
     * Call media specific init routine
     */
    sc->lmc_media->init(sc);

    sc->extra_stats.resetCount++;
    FUNC4(sc->lmc_device, "lmc_reset out");
}