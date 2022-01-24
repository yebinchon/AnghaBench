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
typedef  scalar_t__ u32 ;
struct asd_manuf_sec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcba_sn; int /*<<< orphan*/  sas_addr; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;
struct asd_flash_dir {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FLASH_DE_MS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct asd_flash_dir*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int FUNC3 (struct asd_ha_struct*,struct asd_manuf_sec*) ; 
 int FUNC4 (struct asd_ha_struct*,struct asd_manuf_sec*) ; 
 int FUNC5 (struct asd_ha_struct*,struct asd_manuf_sec*) ; 
 int FUNC6 (struct asd_ha_struct*,struct asd_manuf_sec*) ; 
 int FUNC7 (struct asd_ha_struct*,void*,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct asd_manuf_sec*) ; 
 int /*<<< orphan*/  FUNC9 (struct asd_manuf_sec*) ; 
 struct asd_manuf_sec* FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct asd_ha_struct *asd_ha,
			  struct asd_flash_dir *flash_dir)
{
	int err;
	struct asd_manuf_sec *manuf_sec;
	u32 offs, size;

	err = FUNC2(flash_dir, FLASH_DE_MS, &offs, &size);
	if (err) {
		FUNC0("Couldn't find the manuf. sector\n");
		goto out;
	}

	if (size == 0)
		goto out;

	err = -ENOMEM;
	manuf_sec = FUNC10(size, GFP_KERNEL);
	if (!manuf_sec) {
		FUNC0("no mem for manuf sector\n");
		goto out;
	}

	err = FUNC7(asd_ha, (void *)manuf_sec, offs, size);
	if (err) {
		FUNC0("couldn't read manuf sector at 0x%x, size 0x%x\n",
			    offs, size);
		goto out2;
	}

	err = FUNC8(manuf_sec);
	if (err) {
		FUNC0("couldn't validate manuf sector\n");
		goto out2;
	}

	err = FUNC6(asd_ha, manuf_sec);
	if (err) {
		FUNC0("couldn't read the SAS_ADDR\n");
		goto out2;
	}
	FUNC0("manuf sect SAS_ADDR %llx\n",
		    FUNC1(asd_ha->hw_prof.sas_addr));

	err = FUNC4(asd_ha, manuf_sec);
	if (err) {
		FUNC0("couldn't read the PCBA SN\n");
		goto out2;
	}
	FUNC0("manuf sect PCBA SN %s\n", asd_ha->hw_prof.pcba_sn);

	err = FUNC5(asd_ha, manuf_sec);
	if (err) {
		FUNC0("ms: couldn't get phy parameters\n");
		goto out2;
	}

	err = FUNC3(asd_ha, manuf_sec);
	if (err) {
		FUNC0("ms: couldn't get connector map\n");
		goto out2;
	}

out2:
	FUNC9(manuf_sec);
out:
	return err;
}