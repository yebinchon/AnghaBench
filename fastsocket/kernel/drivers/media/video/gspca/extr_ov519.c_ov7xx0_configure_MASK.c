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
struct sd {void* sensor; int /*<<< orphan*/  invert_led; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  D_PROBE ; 
 int OV7610_REG_COM_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 void* SEN_OV7610 ; 
 void* SEN_OV7620 ; 
 void* SEN_OV7620AE ; 
 void* SEN_OV7640 ; 
 void* SEN_OV7648 ; 
 void* SEN_OV7660 ; 
 void* SEN_OV7670 ; 
 void* SEN_OV76BE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct sd*,int) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	int rc, high, low;

	FUNC0(D_PROBE, "starting OV7xx0 configuration");

	/* Detect sensor (sub)type */
	rc = FUNC2(sd, OV7610_REG_COM_I);

	/* add OV7670 here
	 * it appears to be wrongly detected as a 7610 by default */
	if (rc < 0) {
		FUNC0(D_ERR, "Error detecting sensor type");
		return;
	}
	if ((rc & 3) == 3) {
		/* quick hack to make OV7670s work */
		high = FUNC2(sd, 0x0a);
		low = FUNC2(sd, 0x0b);
		/* info("%x, %x", high, low); */
		if (high == 0x76 && (low & 0xf0) == 0x70) {
			FUNC0(D_PROBE, "Sensor is an OV76%02x", low);
			sd->sensor = SEN_OV7670;
		} else {
			FUNC0(D_PROBE, "Sensor is an OV7610");
			sd->sensor = SEN_OV7610;
		}
	} else if ((rc & 3) == 1) {
		/* I don't know what's different about the 76BE yet. */
		if (FUNC2(sd, 0x15) & 1) {
			FUNC0(D_PROBE, "Sensor is an OV7620AE");
			sd->sensor = SEN_OV7620AE;
		} else {
			FUNC0(D_PROBE, "Sensor is an OV76BE");
			sd->sensor = SEN_OV76BE;
		}
	} else if ((rc & 3) == 0) {
		/* try to read product id registers */
		high = FUNC2(sd, 0x0a);
		if (high < 0) {
			FUNC0(D_ERR, "Error detecting camera chip PID");
			return;
		}
		low = FUNC2(sd, 0x0b);
		if (low < 0) {
			FUNC0(D_ERR, "Error detecting camera chip VER");
			return;
		}
		if (high == 0x76) {
			switch (low) {
			case 0x30:
				FUNC1("Sensor is an OV7630/OV7635");
				FUNC1("7630 is not supported by this driver");
				return;
			case 0x40:
				FUNC0(D_PROBE, "Sensor is an OV7645");
				sd->sensor = SEN_OV7640; /* FIXME */
				break;
			case 0x45:
				FUNC0(D_PROBE, "Sensor is an OV7645B");
				sd->sensor = SEN_OV7640; /* FIXME */
				break;
			case 0x48:
				FUNC0(D_PROBE, "Sensor is an OV7648");
				sd->sensor = SEN_OV7648;
				break;
			case 0x60:
				FUNC0(D_PROBE, "Sensor is a OV7660");
				sd->sensor = SEN_OV7660;
				sd->invert_led = 0;
				break;
			default:
				FUNC0(D_PROBE, "Unknown sensor: 0x76%x", low);
				return;
			}
		} else {
			FUNC0(D_PROBE, "Sensor is an OV7620");
			sd->sensor = SEN_OV7620;
		}
	} else {
		FUNC1("Unknown image sensor version: %d", rc & 3);
	}
}