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
struct pci_dev {int dummy; } ;
struct be_resources {int max_vlans; int max_tx_qs; int max_evt_qs; int /*<<< orphan*/  if_cap_flags; scalar_t__ max_rss_qs; scalar_t__ max_rx_qs; int /*<<< orphan*/  max_mcast_mac; int /*<<< orphan*/  max_uc_mac; int /*<<< orphan*/  max_vfs; } ;
struct be_adapter {int function_mode; int function_caps; scalar_t__ be3_native; struct pci_dev* pdev; } ;

/* Variables and functions */
 scalar_t__ BE2_MAX_RSS_QS ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int BE3_MAX_EVT_QS ; 
 scalar_t__ BE3_MAX_RSS_QS ; 
 int BE3_MAX_TX_QS ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int BE_FUNCTION_CAPS_RSS ; 
 int /*<<< orphan*/  BE_IF_CAP_FLAGS_WANT ; 
 int /*<<< orphan*/  BE_IF_FLAGS_RSS ; 
 int /*<<< orphan*/  BE_MAX_MC ; 
 int BE_NUM_VLANS_SUPPORTED ; 
 int /*<<< orphan*/  BE_UC_PMAC_COUNT ; 
 int /*<<< orphan*/  BE_VF_UC_PMAC_COUNT ; 
 int FLEX10_MODE ; 
 int /*<<< orphan*/  MAX_VFS ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ num_vfs ; 
 int FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct be_adapter *adapter,
			      struct be_resources *res)
{
	struct pci_dev *pdev = adapter->pdev;
	bool use_sriov = false;

	if (FUNC1(adapter) && FUNC3(adapter)) {
		int max_vfs;

		max_vfs = FUNC5(pdev);
		res->max_vfs = max_vfs > 0 ? FUNC4(MAX_VFS, max_vfs) : 0;
		use_sriov = res->max_vfs && num_vfs;
	}

	if (FUNC3(adapter))
		res->max_uc_mac = BE_UC_PMAC_COUNT;
	else
		res->max_uc_mac = BE_VF_UC_PMAC_COUNT;

	if (adapter->function_mode & FLEX10_MODE)
		res->max_vlans = BE_NUM_VLANS_SUPPORTED/8;
	else
		res->max_vlans = BE_NUM_VLANS_SUPPORTED;
	res->max_mcast_mac = BE_MAX_MC;

	if (FUNC0(adapter) || use_sriov || FUNC2(adapter) ||
	    !FUNC3(adapter))
		res->max_tx_qs = 1;
	else
		res->max_tx_qs = BE3_MAX_TX_QS;

	if ((adapter->function_caps & BE_FUNCTION_CAPS_RSS) &&
	    !use_sriov && FUNC3(adapter))
		res->max_rss_qs = (adapter->be3_native) ?
					   BE3_MAX_RSS_QS : BE2_MAX_RSS_QS;
	res->max_rx_qs = res->max_rss_qs + 1;

	res->max_evt_qs = FUNC3(adapter) ? BE3_MAX_EVT_QS : 1;

	res->if_cap_flags = BE_IF_CAP_FLAGS_WANT;
	if (!(adapter->function_caps & BE_FUNCTION_CAPS_RSS))
		res->if_cap_flags &= ~BE_IF_FLAGS_RSS;
}