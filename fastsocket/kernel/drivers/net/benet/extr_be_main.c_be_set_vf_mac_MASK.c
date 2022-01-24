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
struct be_vf_cfg {int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  if_handle; int /*<<< orphan*/  pmac_id; } ;
struct be_adapter {int num_vfs; TYPE_1__* pdev; struct be_vf_cfg* vf_cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct be_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, int vf, u8 *mac)
{
	struct be_adapter *adapter = FUNC7(netdev);
	struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];
	int status;

	if (!FUNC8(adapter))
		return -EPERM;

	if (!FUNC5(mac) || vf >= adapter->num_vfs)
		return -EINVAL;

	if (FUNC0(adapter)) {
		FUNC2(adapter, vf_cfg->if_handle, vf_cfg->pmac_id,
				vf + 1);

		status = FUNC1(adapter, mac, vf_cfg->if_handle,
					 &vf_cfg->pmac_id, vf + 1);
	} else {
		status = FUNC3(adapter, mac, vf_cfg->if_handle,
					vf + 1);
	}

	if (status)
		FUNC4(&adapter->pdev->dev, "MAC %pM set on VF %d Failed\n",
				mac, vf);
	else
		FUNC6(vf_cfg->mac_addr, mac, ETH_ALEN);

	return status;
}