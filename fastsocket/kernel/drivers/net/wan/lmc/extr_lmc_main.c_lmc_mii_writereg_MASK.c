#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lmc_device; } ;
typedef  TYPE_1__ lmc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 int /*<<< orphan*/  csr_9 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4 (lmc_softc_t * const sc, unsigned devaddr, unsigned regno, unsigned data) /*fold00*/
{
    int i = 32;
    int command = (0x5002 << 16) | (devaddr << 23) | (regno << 18) | data;

    FUNC3(sc->lmc_device, "lmc_mii_writereg in");

    FUNC1 (sc);

    i = 31;
    while (i >= 0)
    {
        int datav;

        if (command & (1 << i))
            datav = 0x20000;
        else
            datav = 0x00000;

        FUNC0 (sc, csr_9, datav);
        FUNC2 ();
        /* __SLOW_DOWN_IO; */
        FUNC0 (sc, csr_9, (datav | 0x10000));
        FUNC2 ();
        /* __SLOW_DOWN_IO; */
        i--;
    }

    i = 2;
    while (i > 0)
    {
        FUNC0 (sc, csr_9, 0x40000);
        FUNC2 ();
        /* __SLOW_DOWN_IO; */
        FUNC0 (sc, csr_9, 0x50000);
        FUNC2 ();
        /* __SLOW_DOWN_IO; */
        i--;
    }

    FUNC3(sc->lmc_device, "lmc_mii_writereg out");
}