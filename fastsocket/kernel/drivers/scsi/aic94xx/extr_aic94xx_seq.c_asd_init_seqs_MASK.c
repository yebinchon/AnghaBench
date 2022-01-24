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
struct asd_ha_struct {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAS_RAZOR_SEQUENCER_FW_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (struct asd_ha_struct*) ; 
 int FUNC2 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct asd_ha_struct *asd_ha)
{
	int err;

	err = FUNC1(asd_ha);

	if (err) {
		FUNC0("Failed to load sequencer firmware file %s, error %d\n",
			   SAS_RAZOR_SEQUENCER_FW_FILE, err);
		return err;
	}

	err = FUNC2(asd_ha);
	if (err) {
		FUNC0("couldn't download sequencers for %s\n",
			   FUNC4(asd_ha->pcidev));
		return err;
	}

	FUNC3(asd_ha);

	return 0;
}