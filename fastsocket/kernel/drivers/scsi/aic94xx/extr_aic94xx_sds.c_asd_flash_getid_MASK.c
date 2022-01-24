#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int present; int wide; int /*<<< orphan*/  bar; } ;
struct TYPE_4__ {TYPE_1__ flash; } ;
struct asd_ha_struct {TYPE_2__ hw_prof; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  EXSICNFGR ; 
 int FLASHW ; 
 int /*<<< orphan*/  PCI_CONF_FLSH_BAR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct asd_ha_struct *asd_ha)
{
	int err = 0;
	u32 reg;

	reg = FUNC2(asd_ha, EXSICNFGR);

	if (FUNC5(asd_ha->pcidev, PCI_CONF_FLSH_BAR,
				  &asd_ha->hw_prof.flash.bar)) {
		FUNC1("couldn't read PCI_CONF_FLSH_BAR of %s\n",
			   FUNC4(asd_ha->pcidev));
		return -ENOENT;
	}
	asd_ha->hw_prof.flash.present = 1;
	asd_ha->hw_prof.flash.wide = reg & FLASHW ? 1 : 0;
	err = FUNC3(asd_ha);
	if (err) {
		FUNC0("couldn't reset flash(%d)\n", err);
		return err;
	}
	return 0;
}