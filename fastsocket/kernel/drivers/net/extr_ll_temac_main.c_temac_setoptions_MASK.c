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
struct temac_option {int opt; int m_or; int /*<<< orphan*/  reg; } ;
struct temac_local {int options; int /*<<< orphan*/  indirect_mutex; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct temac_local* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct temac_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct temac_local*,int /*<<< orphan*/ ,int) ; 
 struct temac_option* temac_options ; 

__attribute__((used)) static u32 FUNC5(struct net_device *ndev, u32 options)
{
	struct temac_local *lp = FUNC2(ndev);
	struct temac_option *tp = &temac_options[0];
	int reg;

	FUNC0(&lp->indirect_mutex);
	while (tp->opt) {
		reg = FUNC3(lp, tp->reg) & ~tp->m_or;
		if (options & tp->opt)
			reg |= tp->m_or;
		FUNC4(lp, tp->reg, reg);
		tp++;
	}
	lp->options |= options;
	FUNC1(&lp->indirect_mutex);

	return (0);
}