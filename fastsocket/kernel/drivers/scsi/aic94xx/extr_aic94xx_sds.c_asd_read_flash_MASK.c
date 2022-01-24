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
struct asd_ha_struct {int dummy; } ;
struct asd_flash_dir {int /*<<< orphan*/  rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*,struct asd_flash_dir*) ; 
 int FUNC2 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct asd_ha_struct*,struct asd_flash_dir*) ; 
 int FUNC5 (struct asd_ha_struct*,struct asd_flash_dir*) ; 
 int /*<<< orphan*/  FUNC6 (struct asd_flash_dir*) ; 
 struct asd_flash_dir* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct asd_ha_struct *asd_ha)
{
	int err;
	struct asd_flash_dir *flash_dir;

	err = FUNC2(asd_ha);
	if (err)
		return err;

	flash_dir = FUNC7(sizeof(*flash_dir), GFP_KERNEL);
	if (!flash_dir)
		return -ENOMEM;

	err = -ENOENT;
	if (!FUNC1(asd_ha, flash_dir)) {
		FUNC0("couldn't find flash directory\n");
		goto out;
	}

	if (FUNC8(flash_dir->rev) != 2) {
		FUNC3("unsupported flash dir version:0x%x\n",
			   FUNC8(flash_dir->rev));
		goto out;
	}

	err = FUNC5(asd_ha, flash_dir);
	if (err) {
		FUNC0("couldn't process manuf sector settings\n");
		goto out;
	}

	err = FUNC4(asd_ha, flash_dir);
	if (err) {
		FUNC0("couldn't process CTRL-A user settings\n");
		goto out;
	}

out:
	FUNC6(flash_dir);
	return err;
}