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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MTU_CRn_32BITS ; 
 int MTU_CRn_ENA ; 
 int MTU_CRn_PERIODIC ; 
 int MTU_CRn_PRESCALE_1 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ mtu_base ; 
 int nmdk_cycle ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 cr;

	FUNC3(0, mtu_base + FUNC1(0)); /* off */

	/* configure load and background-load, and fire it up */
	FUNC3(nmdk_cycle, mtu_base + FUNC2(0));
	FUNC3(nmdk_cycle, mtu_base + FUNC0(0));
	cr = MTU_CRn_PERIODIC | MTU_CRn_PRESCALE_1 | MTU_CRn_32BITS;
	FUNC3(cr, mtu_base + FUNC1(0));
	FUNC3(cr | MTU_CRn_ENA, mtu_base + FUNC1(0));
}