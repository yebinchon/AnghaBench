#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pcc_acpi {TYPE_2__* input_dev; int /*<<< orphan*/ * keymap; } ;
struct TYPE_6__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_7__ {int /*<<< orphan*/  keybit; int /*<<< orphan*/  setkeycode; int /*<<< orphan*/  getkeycode; TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/ * evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_PCC_DRIVER_NAME ; 
 int /*<<< orphan*/  ACPI_PCC_INPUT_PHYS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_keymap ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct pcc_acpi*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pcc_getkeycode ; 
 int /*<<< orphan*/  pcc_setkeycode ; 

__attribute__((used)) static int FUNC10(struct pcc_acpi *pcc)
{
	int i, rc;

	pcc->input_dev = FUNC5();
	if (!pcc->input_dev) {
		FUNC0((ACPI_DB_ERROR,
				  "Couldn't allocate input device for hotkey"));
		return -ENOMEM;
	}

	pcc->input_dev->evbit[0] = FUNC2(EV_KEY);

	pcc->input_dev->name = ACPI_PCC_DRIVER_NAME;
	pcc->input_dev->phys = ACPI_PCC_INPUT_PHYS;
	pcc->input_dev->id.bustype = BUS_HOST;
	pcc->input_dev->id.vendor = 0x0001;
	pcc->input_dev->id.product = 0x0001;
	pcc->input_dev->id.version = 0x0100;
	pcc->input_dev->getkeycode = pcc_getkeycode;
	pcc->input_dev->setkeycode = pcc_setkeycode;

	/* load initial keymap */
	FUNC9(pcc->keymap, initial_keymap, sizeof(pcc->keymap));

	for (i = 0; i < FUNC1(pcc->keymap); i++)
		FUNC4(pcc->keymap[i], pcc->input_dev->keybit);
	FUNC3(KEY_RESERVED, pcc->input_dev->keybit);

	FUNC8(pcc->input_dev, pcc);

	rc = FUNC7(pcc->input_dev);
	if (rc < 0)
		FUNC6(pcc->input_dev);

	return rc;
}