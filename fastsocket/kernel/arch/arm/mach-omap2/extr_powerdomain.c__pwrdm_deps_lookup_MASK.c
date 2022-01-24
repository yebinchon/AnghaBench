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
struct pwrdm_dep {struct powerdomain* pwrdm; scalar_t__ pwrdm_name; int /*<<< orphan*/  omap_chip; } ;
struct powerdomain {int /*<<< orphan*/  omap_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 struct powerdomain* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct powerdomain* FUNC2 (scalar_t__) ; 

__attribute__((used)) static struct powerdomain *FUNC3(struct powerdomain *pwrdm,
					      struct pwrdm_dep *deps)
{
	struct pwrdm_dep *pd;

	if (!pwrdm || !deps || !FUNC1(pwrdm->omap_chip))
		return FUNC0(-EINVAL);

	for (pd = deps; pd->pwrdm_name; pd++) {

		if (!FUNC1(pd->omap_chip))
			continue;

		if (!pd->pwrdm && pd->pwrdm_name)
			pd->pwrdm = FUNC2(pd->pwrdm_name);

		if (pd->pwrdm == pwrdm)
			break;

	}

	if (!pd->pwrdm_name)
		return FUNC0(-ENOENT);

	return pd->pwrdm;
}