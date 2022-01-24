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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int flags; int /*<<< orphan*/  mc_count; int /*<<< orphan*/  mc_list; } ;
struct ks8695_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRXC_RA ; 
 int /*<<< orphan*/  DRXC_RM ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  KS8695_DRXC ; 
 int /*<<< orphan*/  KS8695_NR_ADDRESSES ; 
 int /*<<< orphan*/  FUNC0 (struct ks8695_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks8695_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8695_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ks8695_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void
FUNC4(struct net_device *ndev)
{
	struct ks8695_priv *ksp = FUNC3(ndev);
	u32 ctrl;

	ctrl = FUNC1(ksp, KS8695_DRXC);

	if (ndev->flags & IFF_PROMISC) {
		/* enable promiscuous mode */
		ctrl |= DRXC_RA;
	} else if (ndev->flags & ~IFF_PROMISC) {
		/* disable promiscuous mode */
		ctrl &= ~DRXC_RA;
	}

	if (ndev->flags & IFF_ALLMULTI) {
		/* enable all multicast mode */
		ctrl |= DRXC_RM;
	} else if (ndev->mc_count > KS8695_NR_ADDRESSES) {
		/* more specific multicast addresses than can be
		 * handled in hardware
		 */
		ctrl |= DRXC_RM;
	} else {
		/* enable specific multicasts */
		ctrl &= ~DRXC_RM;
		FUNC0(ksp, ndev->mc_list,
					      ndev->mc_count);
	}

	FUNC2(ksp, KS8695_DRXC, ctrl);
}