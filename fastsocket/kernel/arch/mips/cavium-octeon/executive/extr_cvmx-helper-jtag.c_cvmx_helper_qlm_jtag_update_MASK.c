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
struct TYPE_2__ {int update; int select; } ;
union cvmx_ciu_qlm_jtgd {scalar_t__ u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CIU_QLM_JTGD ; 
 int /*<<< orphan*/  OCTEON_CN56XX_PASS1_X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(int qlm)
{
	union cvmx_ciu_qlm_jtgd jtgd;

	/* Update the new data */
	jtgd.u64 = 0;
	jtgd.s.update = 1;
	if (!FUNC0(OCTEON_CN56XX_PASS1_X))
		jtgd.s.select = 1 << qlm;
	FUNC2(CVMX_CIU_QLM_JTGD, jtgd.u64);
	do {
		jtgd.u64 = FUNC1(CVMX_CIU_QLM_JTGD);
	} while (jtgd.s.update);
}