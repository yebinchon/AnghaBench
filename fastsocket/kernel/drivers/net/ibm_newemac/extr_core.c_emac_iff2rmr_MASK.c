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
struct net_device {int flags; scalar_t__ mc_count; } ;
struct emac_instance {int dummy; } ;

/* Variables and functions */
 int EMAC4_RMR_BASE ; 
 int /*<<< orphan*/  EMAC_FTR_EMAC4 ; 
 int EMAC_RMR_BAE ; 
 int EMAC_RMR_BASE ; 
 int EMAC_RMR_IAE ; 
 int EMAC_RMR_MAE ; 
 int EMAC_RMR_PME ; 
 int EMAC_RMR_PMME ; 
 int EMAC_RMR_SFCS ; 
 int EMAC_RMR_SP ; 
 scalar_t__ FUNC0 (struct emac_instance*) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ FUNC1 (struct emac_instance*,int /*<<< orphan*/ ) ; 
 struct emac_instance* FUNC2 (struct net_device*) ; 

__attribute__((used)) static inline u32 FUNC3(struct net_device *ndev)
{
	struct emac_instance *dev = FUNC2(ndev);
	u32 r;

	r = EMAC_RMR_SP | EMAC_RMR_SFCS | EMAC_RMR_IAE | EMAC_RMR_BAE;

	if (FUNC1(dev, EMAC_FTR_EMAC4))
	    r |= EMAC4_RMR_BASE;
	else
	    r |= EMAC_RMR_BASE;

	if (ndev->flags & IFF_PROMISC)
		r |= EMAC_RMR_PME;
	else if (ndev->flags & IFF_ALLMULTI ||
			 (ndev->mc_count > FUNC0(dev)))
		r |= EMAC_RMR_PMME;
	else if (ndev->mc_count > 0)
		r |= EMAC_RMR_MAE;

	return r;
}