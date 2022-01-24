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
struct device {int dummy; } ;
struct dca_provider {int /*<<< orphan*/  node; } ;
struct dca_domain {int /*<<< orphan*/  dca_providers; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCA_PROVIDER_ADD ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dca_domain* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  dca_lock ; 
 int /*<<< orphan*/  dca_provider_chain ; 
 scalar_t__ dca_providers_blocked ; 
 int FUNC2 (struct dca_provider*,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dca_provider*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct dca_provider *dca, struct device *dev)
{
	int err;
	unsigned long flags;
	struct dca_domain *domain;

	FUNC5(&dca_lock, flags);
	if (dca_providers_blocked) {
		FUNC6(&dca_lock, flags);
		return -ENODEV;
	}
	FUNC6(&dca_lock, flags);

	err = FUNC2(dca, dev);
	if (err)
		return err;

	FUNC5(&dca_lock, flags);
	domain = FUNC1(dev);
	if (!domain) {
		if (dca_providers_blocked) {
			FUNC6(&dca_lock, flags);
			FUNC3(dca);
			FUNC7();
		} else {
			FUNC6(&dca_lock, flags);
		}
		return -ENODEV;
	}
	FUNC4(&dca->node, &domain->dca_providers);
	FUNC6(&dca_lock, flags);

	FUNC0(&dca_provider_chain,
				     DCA_PROVIDER_ADD, NULL);
	return 0;
}