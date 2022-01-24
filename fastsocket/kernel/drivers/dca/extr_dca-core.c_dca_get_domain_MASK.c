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
struct pci_bus {int dummy; } ;
struct device {int dummy; } ;
struct dca_domain {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 struct dca_domain* FUNC0 (struct pci_bus*) ; 
 int /*<<< orphan*/  dca_domains ; 
 struct dca_domain* FUNC1 (struct pci_bus*) ; 
 struct pci_bus* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int dca_providers_blocked ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dca_domain *FUNC6(struct device *dev)
{
	struct pci_bus *rc;
	struct dca_domain *domain;

	rc = FUNC2(dev);
	domain = FUNC1(rc);

	if (!domain) {
		if (FUNC3(dev) && !FUNC5(&dca_domains)) {
			dca_providers_blocked = 1;
		} else {
			domain = FUNC0(rc);
			if (domain)
				FUNC4(&domain->node, &dca_domains);
		}
	}

	return domain;
}