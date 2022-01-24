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
struct bfa_ioc_s {int /*<<< orphan*/  ad_cap_bm; int /*<<< orphan*/  port_mode_cfg; int /*<<< orphan*/  port_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip_rev; scalar_t__ pcifn; int /*<<< orphan*/  device_id; } ;
struct bfa_ioc_attr_s {int def_fn; TYPE_1__ pci_attr; int /*<<< orphan*/  adapter_attr; int /*<<< orphan*/  ioc_type; int /*<<< orphan*/  cap_bm; int /*<<< orphan*/  port_mode_cfg; int /*<<< orphan*/  port_mode; scalar_t__ port_id; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc_s*) ; 
 scalar_t__ FUNC5 (struct bfa_ioc_s*) ; 
 scalar_t__ FUNC6 (struct bfa_ioc_s*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct bfa_ioc_s *ioc, struct bfa_ioc_attr_s *ioc_attr)
{
	FUNC7((void *)ioc_attr, 0, sizeof(struct bfa_ioc_attr_s));

	ioc_attr->state = FUNC3(ioc);
	ioc_attr->port_id = FUNC6(ioc);
	ioc_attr->port_mode = ioc->port_mode;
	ioc_attr->port_mode_cfg = ioc->port_mode_cfg;
	ioc_attr->cap_bm = ioc->ad_cap_bm;

	ioc_attr->ioc_type = FUNC4(ioc);

	FUNC1(ioc, &ioc_attr->adapter_attr);

	ioc_attr->pci_attr.device_id = FUNC0(ioc);
	ioc_attr->pci_attr.pcifn = FUNC5(ioc);
	ioc_attr->def_fn = (FUNC5(ioc) == FUNC6(ioc));
	FUNC2(ioc, ioc_attr->pci_attr.chip_rev);
}