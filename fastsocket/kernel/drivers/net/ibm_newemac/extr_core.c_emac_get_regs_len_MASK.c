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
struct emac_instance {int dummy; } ;
struct emac_ethtool_regs_subhdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct emac_instance*) ; 
 int FUNC1 (struct emac_instance*) ; 
 int /*<<< orphan*/  EMAC_FTR_EMAC4 ; 
 scalar_t__ FUNC2 (struct emac_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct emac_instance *dev)
{
	if (FUNC2(dev, EMAC_FTR_EMAC4))
		return sizeof(struct emac_ethtool_regs_subhdr) +
			FUNC0(dev);
	else
		return sizeof(struct emac_ethtool_regs_subhdr) +
			FUNC1(dev);
}