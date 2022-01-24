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
struct psmouse {char* vendor; char* name; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FSP_REG_DEVICE_ID ; 
 scalar_t__ FUNC0 (struct psmouse*,int /*<<< orphan*/ ,int*) ; 

int FUNC1(struct psmouse *psmouse, bool set_properties)
{
	int id;

	if (FUNC0(psmouse, FSP_REG_DEVICE_ID, &id))
		return -EIO;

	if (id != 0x01)
		return -ENODEV;

	if (set_properties) {
		psmouse->vendor = "Sentelic";
		psmouse->name = "FingerSensingPad";
	}

	return 0;
}