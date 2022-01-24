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
struct dmar_domain {int /*<<< orphan*/  gaw; int /*<<< orphan*/  iovad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_domain*) ; 

__attribute__((used)) static void FUNC7(struct dmar_domain *domain)
{
	/* Domain 0 is reserved, so dont process it */
	if (!domain)
		return;

	FUNC6(domain);
	/* destroy iovas */
	FUNC5(&domain->iovad);

	/* clear ptes */
	FUNC1(domain, 0, FUNC0(domain->gaw));

	/* free page tables */
	FUNC2(domain, 0, FUNC0(domain->gaw));

	FUNC4(domain);
	FUNC3(domain);
}