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
typedef  scalar_t__ SDRAM_TRP ;
typedef  scalar_t__ SDRAM_TRCD ;

/* Variables and functions */
 int MCF_SDRAMC_SDCFG1 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (int) ; 
 int MCF_SDRAMC_SDCFG2 ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 
 int MCF_SDRAMC_SDCR ; 
 int MCF_SDRAMC_SDCR_CKE ; 
 int MCF_SDRAMC_SDCR_DDR ; 
 int FUNC11 (int) ; 
 int MCF_SDRAMC_SDCR_IPALL ; 
 int MCF_SDRAMC_SDCR_IREF ; 
 int MCF_SDRAMC_SDCR_MODE_EN ; 
 int FUNC12 (int) ; 
 int MCF_SDRAMC_SDCR_PS_16 ; 
 int FUNC13 (int) ; 
 int MCF_SDRAMC_SDCR_REF ; 
 int MCF_SDRAMC_SDCS0 ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCF_SDRAMC_SDCS_CSSZ_32MBYTE ; 
 int MCF_SDRAMC_SDMR ; 
 int FUNC16 (int) ; 
 int MCF_SDRAMC_SDMR_BNKAD_LEMR ; 
 int MCF_SDRAMC_SDMR_BNKAD_LMR ; 
 int MCF_SDRAMC_SDMR_CMD ; 
 int /*<<< orphan*/  SDRAM_ADDRESS ; 
 int SDRAM_BL ; 
 int SDRAM_CASL ; 
 int SDRAM_TREFI ; 
 scalar_t__ SDRAM_TRFC ; 
 scalar_t__ SDRAM_TWR ; 
 int SYSTEM_PERIOD ; 

void FUNC17(void)
{
	/*
	 * Check to see if the SDRAM has already been initialized
	 * by a run control tool
	 */
	if (!(MCF_SDRAMC_SDCR & MCF_SDRAMC_SDCR_REF)) {
		/* SDRAM chip select initialization */
		
		/* Initialize SDRAM chip select */
		MCF_SDRAMC_SDCS0 = (0
			| FUNC14(SDRAM_ADDRESS)
			| FUNC15(MCF_SDRAMC_SDCS_CSSZ_32MBYTE));

	/*
	 * Basic configuration and initialization
	 */
	MCF_SDRAMC_SDCFG1 = (0
		| FUNC4((int)((SDRAM_CASL + 2) + 0.5 ))
		| FUNC5(SDRAM_TWR + 1)
		| FUNC2((int)((SDRAM_CASL*2) + 2))
		| FUNC0((int)((SDRAM_TRCD ) + 0.5))
		| FUNC1((int)((SDRAM_TRP ) + 0.5))
		| FUNC3((int)(((SDRAM_TRFC) ) + 0.5))
		| FUNC6(3));
	MCF_SDRAMC_SDCFG2 = (0
		| FUNC8(SDRAM_BL/2 + 1)
		| FUNC10(SDRAM_BL/2 + SDRAM_TWR)
		| FUNC9((int)((SDRAM_CASL+SDRAM_BL/2-1.0)+0.5))
		| FUNC7(SDRAM_BL-1));

            
	/*
	 * Precharge and enable write to SDMR
	 */
        MCF_SDRAMC_SDCR = (0
		| MCF_SDRAMC_SDCR_MODE_EN
		| MCF_SDRAMC_SDCR_CKE
		| MCF_SDRAMC_SDCR_DDR
		| FUNC12(1)
		| FUNC13((int)(((SDRAM_TREFI/(SYSTEM_PERIOD*64)) - 1) + 0.5))
		| MCF_SDRAMC_SDCR_PS_16
		| MCF_SDRAMC_SDCR_IPALL);            

	/*
	 * Write extended mode register
	 */
	MCF_SDRAMC_SDMR = (0
		| MCF_SDRAMC_SDMR_BNKAD_LEMR
		| FUNC16(0x0)
		| MCF_SDRAMC_SDMR_CMD);

	/*
	 * Write mode register and reset DLL
	 */
	MCF_SDRAMC_SDMR = (0
		| MCF_SDRAMC_SDMR_BNKAD_LMR
		| FUNC16(0x163)
		| MCF_SDRAMC_SDMR_CMD);

	/*
	 * Execute a PALL command
	 */
	MCF_SDRAMC_SDCR |= MCF_SDRAMC_SDCR_IPALL;

	/*
	 * Perform two REF cycles
	 */
	MCF_SDRAMC_SDCR |= MCF_SDRAMC_SDCR_IREF;
	MCF_SDRAMC_SDCR |= MCF_SDRAMC_SDCR_IREF;

	/*
	 * Write mode register and clear reset DLL
	 */
	MCF_SDRAMC_SDMR = (0
		| MCF_SDRAMC_SDMR_BNKAD_LMR
		| FUNC16(0x063)
		| MCF_SDRAMC_SDMR_CMD);
				
	/*
	 * Enable auto refresh and lock SDMR
	 */
	MCF_SDRAMC_SDCR &= ~MCF_SDRAMC_SDCR_MODE_EN;
	MCF_SDRAMC_SDCR |= (0
		| MCF_SDRAMC_SDCR_REF
		| FUNC11(0xC));
	}
}