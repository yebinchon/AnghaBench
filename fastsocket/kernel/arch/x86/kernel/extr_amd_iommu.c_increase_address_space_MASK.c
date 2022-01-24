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
typedef  int /*<<< orphan*/  u64 ;
struct protection_domain {scalar_t__ mode; int updated; int /*<<< orphan*/ * pt_root; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ PAGE_MODE_6_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct protection_domain *domain,
				   gfp_t gfp)
{
	u64 *pte;

	if (domain->mode == PAGE_MODE_6_LEVEL)
		/* address space already 64 bit large */
		return false;

	pte = (void *)FUNC1(gfp);
	if (!pte)
		return false;

	*pte             = FUNC0(domain->mode,
					FUNC2(domain->pt_root));
	domain->pt_root  = pte;
	domain->mode    += 1;
	domain->updated  = true;

	return true;
}