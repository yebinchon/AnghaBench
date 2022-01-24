#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct TYPE_3__ {unsigned int start; scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__ ocq; } ;
struct adapter {TYPE_2__ vres; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int MEMWIN0_APERTURE ; 
 unsigned int MEMWIN0_BASE ; 
 unsigned int MEMWIN1_APERTURE ; 
 unsigned int MEMWIN1_BASE ; 
 unsigned int MEMWIN2_APERTURE ; 
 unsigned int MEMWIN2_BASE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  PCIE_MEM_ACCESS_BASE_WIN ; 
 int /*<<< orphan*/  PCIE_MEM_ACCESS_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct adapter *adap)
{
	u32 bar0;

	bar0 = FUNC5(adap->pdev, 0);  /* truncation intentional */
	FUNC8(adap, FUNC2(PCIE_MEM_ACCESS_BASE_WIN, 0),
		     (bar0 + MEMWIN0_BASE) | FUNC0(0) |
		     FUNC3(FUNC4(MEMWIN0_APERTURE) - 10));
	FUNC8(adap, FUNC2(PCIE_MEM_ACCESS_BASE_WIN, 1),
		     (bar0 + MEMWIN1_BASE) | FUNC0(0) |
		     FUNC3(FUNC4(MEMWIN1_APERTURE) - 10));
	FUNC8(adap, FUNC2(PCIE_MEM_ACCESS_BASE_WIN, 2),
		     (bar0 + MEMWIN2_BASE) | FUNC0(0) |
		     FUNC3(FUNC4(MEMWIN2_APERTURE) - 10));
	if (adap->vres.ocq.size) {
		unsigned int start, sz_kb;

		start = FUNC5(adap->pdev, 2) +
			FUNC1(adap->pdev, &adap->vres);
		sz_kb = FUNC6(adap->vres.ocq.size) >> 10;
		FUNC8(adap,
			     FUNC2(PCIE_MEM_ACCESS_BASE_WIN, 3),
			     start | FUNC0(1) | FUNC3(FUNC4(sz_kb)));
		FUNC8(adap,
			     FUNC2(PCIE_MEM_ACCESS_OFFSET, 3),
			     adap->vres.ocq.start);
		FUNC7(adap,
			    FUNC2(PCIE_MEM_ACCESS_OFFSET, 3));
	}
}