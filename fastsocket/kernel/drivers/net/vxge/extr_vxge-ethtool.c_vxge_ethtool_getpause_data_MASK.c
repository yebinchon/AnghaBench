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
struct vxgedev {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; } ;
struct __vxge_hw_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct __vxge_hw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
					struct ethtool_pauseparam *ep)
{
	struct vxgedev *vdev = (struct vxgedev *)FUNC0(dev);
	struct __vxge_hw_device  *hldev = (struct __vxge_hw_device  *)
			FUNC1(vdev->pdev);

	FUNC2(hldev, 0, &ep->tx_pause, &ep->rx_pause);
}