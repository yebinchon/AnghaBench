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
struct TYPE_2__ {int /*<<< orphan*/  chip_rev; int /*<<< orphan*/  pcifn; int /*<<< orphan*/  device_id; } ;
struct bfa_ioc_attr {TYPE_1__ pci_attr; int /*<<< orphan*/  def_fn; int /*<<< orphan*/  adapter_attr; int /*<<< orphan*/  ioc_type; int /*<<< orphan*/  cap_bm; int /*<<< orphan*/  port_mode_cfg; int /*<<< orphan*/  port_mode; int /*<<< orphan*/  port_id; int /*<<< orphan*/  state; } ;
struct bfa_ioc {int /*<<< orphan*/  ad_cap_bm; int /*<<< orphan*/  port_mode_cfg; int /*<<< orphan*/  port_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 

void
FUNC9(struct bfa_ioc *ioc, struct bfa_ioc_attr *ioc_attr)
{
	FUNC8((void *)ioc_attr, 0, sizeof(struct bfa_ioc_attr));

	ioc_attr->state = FUNC3(ioc);
	ioc_attr->port_id = FUNC7(ioc);
	ioc_attr->port_mode = ioc->port_mode;

	ioc_attr->port_mode_cfg = ioc->port_mode_cfg;
	ioc_attr->cap_bm = ioc->ad_cap_bm;

	ioc_attr->ioc_type = FUNC4(ioc);

	FUNC1(ioc, &ioc_attr->adapter_attr);

	ioc_attr->pci_attr.device_id = FUNC0(ioc);
	ioc_attr->pci_attr.pcifn = FUNC6(ioc);
	ioc_attr->def_fn = FUNC5(ioc);
	FUNC2(ioc, ioc_attr->pci_attr.chip_rev);
}