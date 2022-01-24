#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ qlm_cfg; int lane_swp; int lnk_enb; } ;
union cvmx_pescx_ctl_status {void* u64; TYPE_3__ s; } ;
struct TYPE_8__ {int m_cpl_len_err; } ;
union cvmx_pciercx_cfg455 {void* u32; TYPE_2__ s; } ;
struct TYPE_7__ {int lme; } ;
union cvmx_pciercx_cfg452 {void* u32; TYPE_1__ s; } ;
struct TYPE_11__ {int rtl; } ;
union cvmx_pciercx_cfg448 {void* u32; TYPE_5__ s; } ;
struct TYPE_10__ {scalar_t__ dlla; int nlw; } ;
union cvmx_pciercx_cfg032 {TYPE_4__ s; void* u32; } ;
typedef  int uint64_t ;
struct TYPE_12__ {int cpu_clock_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  OCTEON_CN52XX ; 
 int /*<<< orphan*/  OCTEON_CN52XX_PASS1_0 ; 
 int /*<<< orphan*/  OCTEON_CN52XX_PASS1_X ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int FUNC8 () ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,void*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC15(int pcie_port)
{
	uint64_t start_cycle;
	union cvmx_pescx_ctl_status pescx_ctl_status;
	union cvmx_pciercx_cfg452 pciercx_cfg452;
	union cvmx_pciercx_cfg032 pciercx_cfg032;
	union cvmx_pciercx_cfg448 pciercx_cfg448;

	/* Set the lane width */
	pciercx_cfg452.u32 =
	    FUNC9(pcie_port, FUNC2(pcie_port));
	pescx_ctl_status.u64 = FUNC11(FUNC4(pcie_port));
	if (pescx_ctl_status.s.qlm_cfg == 0) {
		/* We're in 8 lane (56XX) or 4 lane (54XX) mode */
		pciercx_cfg452.s.lme = 0xf;
	} else {
		/* We're in 4 lane (56XX) or 2 lane (52XX) mode */
		pciercx_cfg452.s.lme = 0x7;
	}
	FUNC10(pcie_port, FUNC2(pcie_port),
			     pciercx_cfg452.u32);

	/*
	 * CN52XX pass 1.x has an errata where length mismatches on UR
	 * responses can cause bus errors on 64bit memory
	 * reads. Turning off length error checking fixes this.
	 */
	if (FUNC5(OCTEON_CN52XX_PASS1_X)) {
		union cvmx_pciercx_cfg455 pciercx_cfg455;
		pciercx_cfg455.u32 =
		    FUNC9(pcie_port,
					FUNC3(pcie_port));
		pciercx_cfg455.s.m_cpl_len_err = 1;
		FUNC10(pcie_port, FUNC3(pcie_port),
				     pciercx_cfg455.u32);
	}

	/* Lane swap needs to be manually enabled for CN52XX */
	if (FUNC5(OCTEON_CN52XX) && (pcie_port == 1)) {
		pescx_ctl_status.s.lane_swp = 1;
		FUNC14(FUNC4(pcie_port),
			       pescx_ctl_status.u64);
	}

	/* Bring up the link */
	pescx_ctl_status.u64 = FUNC11(FUNC4(pcie_port));
	pescx_ctl_status.s.lnk_enb = 1;
	FUNC14(FUNC4(pcie_port), pescx_ctl_status.u64);

	/*
	 * CN52XX pass 1.0: Due to a bug in 2nd order CDR, it needs to
	 * be disabled.
	 */
	if (FUNC5(OCTEON_CN52XX_PASS1_0))
		FUNC6(0);

	/* Wait for the link to come up */
	FUNC7("PCIe: Waiting for port %d link\n", pcie_port);
	start_cycle = FUNC8();
	do {
		if (FUNC8() - start_cycle >
		    2 * FUNC12()->cpu_clock_hz) {
			FUNC7("PCIe: Port %d link timeout\n",
				     pcie_port);
			return -1;
		}
		FUNC13(10000);
		pciercx_cfg032.u32 =
		    FUNC9(pcie_port,
					FUNC0(pcie_port));
	} while (pciercx_cfg032.s.dlla == 0);

	/* Display the link status */
	FUNC7("PCIe: Port %d link active, %d lanes\n", pcie_port,
		     pciercx_cfg032.s.nlw);

	/*
	 * Update the Replay Time Limit. Empirically, some PCIe
	 * devices take a little longer to respond than expected under
	 * load. As a workaround for this we configure the Replay Time
	 * Limit to the value expected for a 512 byte MPS instead of
	 * our actual 256 byte MPS. The numbers below are directly
	 * from the PCIe spec table 3-4.
	 */
	pciercx_cfg448.u32 =
	    FUNC9(pcie_port, FUNC1(pcie_port));
	switch (pciercx_cfg032.s.nlw) {
	case 1:		/* 1 lane */
		pciercx_cfg448.s.rtl = 1677;
		break;
	case 2:		/* 2 lanes */
		pciercx_cfg448.s.rtl = 867;
		break;
	case 4:		/* 4 lanes */
		pciercx_cfg448.s.rtl = 462;
		break;
	case 8:		/* 8 lanes */
		pciercx_cfg448.s.rtl = 258;
		break;
	}
	FUNC10(pcie_port, FUNC1(pcie_port),
			     pciercx_cfg448.u32);

	return 0;
}