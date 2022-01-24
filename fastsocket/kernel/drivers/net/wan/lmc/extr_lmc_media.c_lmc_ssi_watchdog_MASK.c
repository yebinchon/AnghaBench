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
typedef  int u16 ;
typedef  int /*<<< orphan*/  lmc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  LMC_MII16_LED2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(lmc_softc_t * const sc)
{
	u16 mii17 = FUNC2(sc, 0, 17);
	if (((mii17 >> 3) & 7) == 7)
		FUNC0(sc, LMC_MII16_LED2);
	else
		FUNC1(sc, LMC_MII16_LED2);
}