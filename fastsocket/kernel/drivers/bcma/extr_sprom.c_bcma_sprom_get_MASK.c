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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  core; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct bcma_bus {int /*<<< orphan*/  sprom; TYPE_2__ drv_cc; TYPE_1__ chipinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_SPROM ; 
 scalar_t__ BCMA_CHIP_ID_BCM4331 ; 
 scalar_t__ BCMA_CHIP_ID_BCM43431 ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SSB_SPROMSIZE_WORDS_R4 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_bus*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bcma_bus*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_bus*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcma_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct bcma_bus*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct bcma_bus *bus)
{
	u16 offset = BCMA_CC_SPROM;
	u16 *sprom;
	int err = 0;

	if (!bus->drv_cc.core)
		return -EOPNOTSUPP;

	if (!FUNC3(bus)) {
		bool sprom_onchip;

		/*
		 * External SPROM takes precedence so check
		 * on-chip OTP only when no external SPROM
		 * is present.
		 */
		sprom_onchip = FUNC5(bus);
		if (sprom_onchip) {
			/* determine offset */
			offset = FUNC6(bus);
		}
		if (!offset || !sprom_onchip) {
			/*
			 * Maybe there is no SPROM on the device?
			 * Now we ask the arch code if there is some sprom
			 * available for this device in some other storage.
			 */
			err = FUNC2(bus, &bus->sprom);
			return err;
		}
	}

	sprom = FUNC10(SSB_SPROMSIZE_WORDS_R4, sizeof(u16),
			GFP_KERNEL);
	if (!sprom)
		return -ENOMEM;

	if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4331 ||
	    bus->chipinfo.id == BCMA_CHIP_ID_BCM43431)
		FUNC0(&bus->drv_cc, false);

	FUNC1(bus, "SPROM offset 0x%x\n", offset);
	FUNC7(bus, offset, sprom);

	if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4331 ||
	    bus->chipinfo.id == BCMA_CHIP_ID_BCM43431)
		FUNC0(&bus->drv_cc, true);

	err = FUNC8(sprom);
	if (err) {
		FUNC9(bus, "invalid sprom read from the PCIe card, try to use fallback sprom\n");
		err = FUNC2(bus, &bus->sprom);
		goto out;
	}

	FUNC4(bus, sprom);

out:
	FUNC11(sprom);
	return err;
}