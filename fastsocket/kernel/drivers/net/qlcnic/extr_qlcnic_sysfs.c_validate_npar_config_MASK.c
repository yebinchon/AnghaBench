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
typedef  int u8 ;
struct qlcnic_npar_func_cfg {int pci_func; int /*<<< orphan*/  max_bw; int /*<<< orphan*/  min_bw; } ;
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int QL_STATUS_INVALID_PARAM ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*,int) ; 

__attribute__((used)) static int FUNC2(struct qlcnic_adapter *adapter,
				struct qlcnic_npar_func_cfg *np_cfg,
				int count)
{
	u8 pci_func, i;

	for (i = 0; i < count; i++) {
		pci_func = np_cfg[i].pci_func;
		if (FUNC1(adapter, pci_func) < 0)
			return QL_STATUS_INVALID_PARAM;

		if (!FUNC0(np_cfg[i].min_bw) ||
		    !FUNC0(np_cfg[i].max_bw))
			return QL_STATUS_INVALID_PARAM;
	}
	return 0;
}