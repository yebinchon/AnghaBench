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
struct ixgbe_adapter {int dcbx_cap; int default_up; int num_vfs; struct vf_data_storage* vfinfo; TYPE_1__ fcoe; } ;
struct dcb_app {scalar_t__ selector; scalar_t__ protocol; int priority; } ;

/* Variables and functions */
 int DCB_CAP_DCBX_VER_IEEE ; 
 int EINVAL ; 
 scalar_t__ ETH_P_FCOE ; 
 scalar_t__ IEEE_8021QAZ_APP_SEL_ETHERTYPE ; 
 int FUNC0 (struct net_device*,struct dcb_app*) ; 
 int FUNC1 (struct net_device*,struct dcb_app*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*,int /*<<< orphan*/ ,int,int) ; 
 struct ixgbe_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				   struct dcb_app *app)
{
	struct ixgbe_adapter *adapter = FUNC4(dev);
	int err = -EINVAL;

	if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
		return err;

	err = FUNC1(dev, app);
	if (err)
		return err;

#ifdef IXGBE_FCOE
	if (app->selector == IEEE_8021QAZ_APP_SEL_ETHERTYPE &&
	    app->protocol == ETH_P_FCOE) {
		u8 app_mask = dcb_ieee_getapp_mask(dev, app);

		if (app_mask & (1 << adapter->fcoe.up))
			return err;

		adapter->fcoe.up = app->priority;
		ixgbe_dcbnl_devreset(dev);
	}
#endif

	/* VF devices should use default UP when available */
	if (app->selector == IEEE_8021QAZ_APP_SEL_ETHERTYPE &&
	    app->protocol == 0) {
		int vf;

		adapter->default_up = app->priority;

		for (vf = 0; vf < adapter->num_vfs; vf++) {
			struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];

			if (!vfinfo->pf_qos)
				FUNC3(adapter, vfinfo->pf_vlan,
						app->priority, vf);
		}
	}

	return 0;
}