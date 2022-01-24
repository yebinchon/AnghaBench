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
struct TYPE_4__ {int enabled; int address; } ;
struct TYPE_3__ {int address; int enabled; } ;

/* Variables and functions */
 int BP_IABR ; 
 int BP_IABR_TE ; 
 int /*<<< orphan*/  CPU_FTR_IABR ; 
 int /*<<< orphan*/  SPRN_IABR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ dabr ; 
 TYPE_1__* iabr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (dabr.enabled)
		FUNC2(dabr.address | (dabr.enabled & 7));
	if (iabr && FUNC0(CPU_FTR_IABR))
		FUNC1(SPRN_IABR, iabr->address
			 | (iabr->enabled & (BP_IABR|BP_IABR_TE)));
}