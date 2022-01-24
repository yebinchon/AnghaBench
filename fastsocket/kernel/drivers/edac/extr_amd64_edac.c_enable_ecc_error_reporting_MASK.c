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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int nb_ecc_prev; } ;
struct ecc_settings {int old_nbctl; int nbctl_valid; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBCFG ; 
 int NBCFG_ECC_ENABLE ; 
 int /*<<< orphan*/  NBCTL ; 
 int /*<<< orphan*/  ON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (struct ecc_settings*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct ecc_settings *s, u8 nid,
				       struct pci_dev *F3)
{
	bool ret = true;
	u32 value, mask = 0x3;		/* UECC/CECC enable */

	if (FUNC5(s, nid, ON)) {
		FUNC2("Error enabling ECC reporting over MCGCTL!\n");
		return false;
	}

	FUNC1(F3, NBCTL, &value);

	s->old_nbctl   = value & mask;
	s->nbctl_valid = true;

	value |= mask;
	FUNC3(F3, NBCTL, value);

	FUNC1(F3, NBCFG, &value);

	FUNC4("1: node %d, NBCFG=0x%08x[DramEccEn: %d]\n",
		nid, value, !!(value & NBCFG_ECC_ENABLE));

	if (!(value & NBCFG_ECC_ENABLE)) {
		FUNC2("DRAM ECC disabled on this node, enabling...\n");

		s->flags.nb_ecc_prev = 0;

		/* Attempt to turn on DRAM ECC Enable */
		value |= NBCFG_ECC_ENABLE;
		FUNC3(F3, NBCFG, value);

		FUNC1(F3, NBCFG, &value);

		if (!(value & NBCFG_ECC_ENABLE)) {
			FUNC2("Hardware rejected DRAM ECC enable,"
				   "check memory DIMM configuration.\n");
			ret = false;
		} else {
			FUNC0("Hardware accepted DRAM ECC Enable\n");
		}
	} else {
		s->flags.nb_ecc_prev = 1;
	}

	FUNC4("2: node %d, NBCFG=0x%08x[DramEccEn: %d]\n",
		nid, value, !!(value & NBCFG_ECC_ENABLE));

	return ret;
}