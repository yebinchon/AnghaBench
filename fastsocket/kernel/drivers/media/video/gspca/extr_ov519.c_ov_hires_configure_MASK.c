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
struct sd {scalar_t__ bridge; int /*<<< orphan*/  sensor; } ;

/* Variables and functions */
 scalar_t__ BRIDGE_OVFX2 ; 
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SEN_OV2610 ; 
 int /*<<< orphan*/  SEN_OV3610 ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct sd*,int) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	int high, low;

	if (sd->bridge != BRIDGE_OVFX2) {
		FUNC1("error hires sensors only supported with ovfx2");
		return;
	}

	FUNC0(D_PROBE, "starting ov hires configuration");

	/* Detect sensor (sub)type */
	high = FUNC2(sd, 0x0a);
	low = FUNC2(sd, 0x0b);
	/* info("%x, %x", high, low); */
	if (high == 0x96 && low == 0x40) {
		FUNC0(D_PROBE, "Sensor is an OV2610");
		sd->sensor = SEN_OV2610;
	} else if (high == 0x36 && (low & 0x0f) == 0x00) {
		FUNC0(D_PROBE, "Sensor is an OV3610");
		sd->sensor = SEN_OV3610;
	} else {
		FUNC1("Error unknown sensor type: %02x%02x",
			high, low);
	}
}