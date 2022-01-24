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
typedef  int u8 ;
struct vf_data_storage {int /*<<< orphan*/  pf_vlan; int /*<<< orphan*/  pf_qos; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int up; } ;
struct ixgbe_adapter {int dcbx_cap; scalar_t__ default_up; int num_vfs; struct vf_data_storage* vfinfo; TYPE_1__ fcoe; } ;
struct dcb_app {scalar_t__ selector; scalar_t__ protocol; scalar_t__ priority; } ;

/* Variables and functions */
 int DCB_CAP_DCBX_VER_IEEE ; 
 int EINVAL ; 
 scalar_t__ ETH_P_FCOE ; 
 scalar_t__ IEEE_8021QAZ_APP_SEL_ETHERTYPE ; 
 int IXGBE_FCOE_DEFTC ; 
 int FUNC0 (struct net_device*,struct dcb_app*) ; 
 void* FUNC1 (struct net_device*,struct dcb_app*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*,int /*<<< orphan*/ ,int,int) ; 
 struct ixgbe_adapter* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				   struct dcb_app *app)
{
	struct ixgbe_adapter *adapter = FUNC6(dev);
	int err;

	if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
		return -EINVAL;

	err = FUNC0(dev, app);

#ifdef IXGBE_FCOE
	if (!err && app->selector == IEEE_8021QAZ_APP_SEL_ETHERTYPE &&
	    app->protocol == ETH_P_FCOE) {
		u8 app_mask = dcb_ieee_getapp_mask(dev, app);

		if (app_mask & (1 << adapter->fcoe.up))
			return err;

		adapter->fcoe.up = app_mask ?
				   ffs(app_mask) - 1 : IXGBE_FCOE_DEFTC;
		ixgbe_dcbnl_devreset(dev);
	}
#endif
	/* IF default priority is being removed clear VF default UP */
	if (app->selector == IEEE_8021QAZ_APP_SEL_ETHERTYPE &&
	    app->protocol == 0 && adapter->default_up == app->priority) {
		int vf;
		long unsigned int app_mask = FUNC1(dev, app);
		int qos = app_mask ? FUNC3(&app_mask, 8) : 0;

		adapter->default_up = qos;

		for (vf = 0; vf < adapter->num_vfs; vf++) {
			struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];

			if (!vfinfo->pf_qos)
				FUNC5(adapter, vfinfo->pf_vlan,
						qos, vf);
		}
	}

	return err;
}