#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; } ;
struct efx_vf {int /*<<< orphan*/  status_lock; TYPE_1__ addr; } ;
struct efx_nic {int vf_init_count; struct efx_vf* vf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct efx_vf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC4 (struct net_device*) ; 

int FUNC5(struct net_device *net_dev, int vf_i, u8 *mac)
{
	struct efx_nic *efx = FUNC4(net_dev);
	struct efx_vf *vf;

	if (vf_i >= efx->vf_init_count)
		return -EINVAL;
	vf = efx->vf + vf_i;

	FUNC2(&vf->status_lock);
	FUNC1(vf->addr.mac_addr, mac, ETH_ALEN);
	FUNC0(vf);
	FUNC3(&vf->status_lock);

	return 0;
}