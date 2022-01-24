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
typedef  int u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
#define  ATOM_DCPLL 131 
#define  ATOM_PPLL1 130 
#define  ATOM_PPLL2 129 
#define  ATOM_PPLL_INVALID 128 
 int /*<<< orphan*/  AVIVO_P1PLL_INT_SS_CNTL ; 
 int /*<<< orphan*/  AVIVO_P2PLL_INT_SS_CNTL ; 
 int /*<<< orphan*/  EVERGREEN_P1PLL_SS_CNTL ; 
 int /*<<< orphan*/  EVERGREEN_P2PLL_SS_CNTL ; 
 int EVERGREEN_PxPLL_SS_EN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev, int pll_id)
{
	u32 ss_cntl;

	if (FUNC1(rdev)) {
		switch (pll_id) {
		case ATOM_PPLL1:
			ss_cntl = FUNC2(EVERGREEN_P1PLL_SS_CNTL);
			ss_cntl &= ~EVERGREEN_PxPLL_SS_EN;
			FUNC3(EVERGREEN_P1PLL_SS_CNTL, ss_cntl);
			break;
		case ATOM_PPLL2:
			ss_cntl = FUNC2(EVERGREEN_P2PLL_SS_CNTL);
			ss_cntl &= ~EVERGREEN_PxPLL_SS_EN;
			FUNC3(EVERGREEN_P2PLL_SS_CNTL, ss_cntl);
			break;
		case ATOM_DCPLL:
		case ATOM_PPLL_INVALID:
			return;
		}
	} else if (FUNC0(rdev)) {
		switch (pll_id) {
		case ATOM_PPLL1:
			ss_cntl = FUNC2(AVIVO_P1PLL_INT_SS_CNTL);
			ss_cntl &= ~1;
			FUNC3(AVIVO_P1PLL_INT_SS_CNTL, ss_cntl);
			break;
		case ATOM_PPLL2:
			ss_cntl = FUNC2(AVIVO_P2PLL_INT_SS_CNTL);
			ss_cntl &= ~1;
			FUNC3(AVIVO_P2PLL_INT_SS_CNTL, ss_cntl);
			break;
		case ATOM_DCPLL:
		case ATOM_PPLL_INVALID:
			return;
		}
	}
}