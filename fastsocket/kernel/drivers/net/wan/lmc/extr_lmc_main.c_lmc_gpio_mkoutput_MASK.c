#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int lmc_gpio_io; int /*<<< orphan*/  lmc_device; } ;
typedef  TYPE_1__ lmc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 
 int TULIP_GP_PINSET ; 
 int /*<<< orphan*/  csr_gp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(lmc_softc_t * const sc, u32 bits) /*fold00*/
{
    FUNC1(sc->lmc_device, "lmc_gpio_mkoutput in");
    sc->lmc_gpio_io |= bits;
    FUNC0(sc, csr_gp, TULIP_GP_PINSET | (sc->lmc_gpio_io));
    FUNC1(sc->lmc_device, "lmc_gpio_mkoutput out");
}