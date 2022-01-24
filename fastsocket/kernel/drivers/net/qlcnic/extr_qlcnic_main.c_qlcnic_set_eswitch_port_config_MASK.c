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
struct qlcnic_esw_func_cfg {int /*<<< orphan*/  pci_func; } ;
struct qlcnic_adapter {int flags; TYPE_1__* ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  pci_func; } ;

/* Variables and functions */
 int EIO ; 
 int QLCNIC_ESWITCH_ENABLED ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*,struct qlcnic_esw_func_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,struct qlcnic_esw_func_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,struct qlcnic_esw_func_cfg*) ; 

int FUNC3(struct qlcnic_adapter *adapter)
{
	struct qlcnic_esw_func_cfg esw_cfg;

	if (!(adapter->flags & QLCNIC_ESWITCH_ENABLED))
		return 0;

	esw_cfg.pci_func = adapter->ahw->pci_func;
	if (FUNC0(adapter, &esw_cfg))
			return -EIO;
	FUNC2(adapter, &esw_cfg);
	FUNC1(adapter, &esw_cfg);

	return 0;
}