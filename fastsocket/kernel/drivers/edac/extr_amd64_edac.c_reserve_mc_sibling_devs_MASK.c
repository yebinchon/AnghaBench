#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct amd64_pvt {TYPE_1__* F3; TYPE_1__* F2; TYPE_1__* F1; } ;
struct TYPE_4__ {int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_AMD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct amd64_pvt *pvt, u16 f1_id, u16 f3_id)
{
	/* Reserve the ADDRESS MAP Device */
	pvt->F1 = FUNC3(pvt->F2->vendor, f1_id, pvt->F2);
	if (!pvt->F1) {
		FUNC0("error address map device not found: "
			  "vendor %x device 0x%x (broken BIOS?)\n",
			  PCI_VENDOR_ID_AMD, f1_id);
		return -ENODEV;
	}

	/* Reserve the MISC Device */
	pvt->F3 = FUNC3(pvt->F2->vendor, f3_id, pvt->F2);
	if (!pvt->F3) {
		FUNC2(pvt->F1);
		pvt->F1 = NULL;

		FUNC0("error F3 device not found: "
			  "vendor %x device 0x%x (broken BIOS?)\n",
			  PCI_VENDOR_ID_AMD, f3_id);

		return -ENODEV;
	}
	FUNC1("F1: %s\n", FUNC4(pvt->F1));
	FUNC1("F2: %s\n", FUNC4(pvt->F2));
	FUNC1("F3: %s\n", FUNC4(pvt->F3));

	return 0;
}