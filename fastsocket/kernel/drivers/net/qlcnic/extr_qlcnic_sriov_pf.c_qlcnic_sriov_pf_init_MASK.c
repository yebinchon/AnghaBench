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
typedef  scalar_t__ u8 ;
struct qlcnic_info {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  switch_mode; scalar_t__ phys_port; } ;
struct qlcnic_hardware_context {int /*<<< orphan*/  nic_mode; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  switch_mode; scalar_t__ physical_port; scalar_t__ pci_func; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLC_83XX_SRIOV_MODE ; 
 int FUNC0 (struct qlcnic_adapter*,struct qlcnic_info*,scalar_t__) ; 
 int FUNC1 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_info*) ; 
 int FUNC4 (struct qlcnic_adapter*,struct qlcnic_info*,scalar_t__) ; 
 int FUNC5 (struct qlcnic_adapter*,scalar_t__,int) ; 
 int FUNC6 (struct qlcnic_adapter*,int) ; 
 int FUNC7 (struct qlcnic_adapter*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	struct qlcnic_info nic_info, pf_info, vp_info;
	int err;
	u8 func = ahw->pci_func;

	if (!FUNC2(adapter))
		return 0;

	err = FUNC6(adapter, 1);
	if (err)
		return err;

	err = FUNC5(adapter, func, 1);
	if (err)
		goto disable_vlan_filtering;

	err = FUNC7(adapter, 1, func);
	if (err)
		goto disable_eswitch;

	err = FUNC3(adapter, &pf_info);
	if (err)
		goto delete_vport;

	err = FUNC0(adapter, &nic_info, func);
	if (err)
		goto delete_vport;

	err = FUNC4(adapter, &vp_info, func);
	if (err)
		goto delete_vport;

	err = FUNC1(adapter, 1);
	if (err)
		goto delete_vport;

	ahw->physical_port = (u8) nic_info.phys_port;
	ahw->switch_mode = nic_info.switch_mode;
	ahw->max_mtu = nic_info.max_mtu;
	ahw->capabilities = nic_info.capabilities;
	ahw->nic_mode = QLC_83XX_SRIOV_MODE;
	return err;

delete_vport:
	FUNC7(adapter, 0, func);

disable_eswitch:
	FUNC5(adapter, func, 0);

disable_vlan_filtering:
	FUNC6(adapter, 0);

	return err;
}