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
struct amo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  SGI_XPC_ACTIVATE ; 
 int XPC_ACTIVATE_IRQ_AMOS_SN2 ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct amo*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(unsigned long amos_page_pa, int from_nasid,
			  int to_nasid, int to_phys_cpuid)
{
	struct amo *amos = (struct amo *)FUNC2(amos_page_pa +
					      (XPC_ACTIVATE_IRQ_AMOS_SN2 *
					      sizeof(struct amo)));

	(void)FUNC3(&amos[FUNC1(from_nasid / 2)],
			       FUNC0(from_nasid / 2), to_nasid,
			       to_phys_cpuid, SGI_XPC_ACTIVATE);
}