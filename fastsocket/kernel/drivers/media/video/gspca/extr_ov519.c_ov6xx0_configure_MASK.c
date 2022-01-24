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
struct sd {int sif; void* sensor; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  OV7610_REG_COM_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* SEN_OV6620 ; 
 void* SEN_OV6630 ; 
 void* SEN_OV66308AF ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct sd *sd)
{
	int rc;
	FUNC0(D_PROBE, "starting OV6xx0 configuration");

	/* Detect sensor (sub)type */
	rc = FUNC2(sd, OV7610_REG_COM_I);
	if (rc < 0) {
		FUNC0(D_ERR, "Error detecting sensor type");
		return;
	}

	/* Ugh. The first two bits are the version bits, but
	 * the entire register value must be used. I guess OVT
	 * underestimated how many variants they would make. */
	switch (rc) {
	case 0x00:
		sd->sensor = SEN_OV6630;
		FUNC3("WARNING: Sensor is an OV66308. Your camera may have");
		FUNC3("been misdetected in previous driver versions.");
		break;
	case 0x01:
		sd->sensor = SEN_OV6620;
		FUNC0(D_PROBE, "Sensor is an OV6620");
		break;
	case 0x02:
		sd->sensor = SEN_OV6630;
		FUNC0(D_PROBE, "Sensor is an OV66308AE");
		break;
	case 0x03:
		sd->sensor = SEN_OV66308AF;
		FUNC0(D_PROBE, "Sensor is an OV66308AF");
		break;
	case 0x90:
		sd->sensor = SEN_OV6630;
		FUNC3("WARNING: Sensor is an OV66307. Your camera may have");
		FUNC3("been misdetected in previous driver versions.");
		break;
	default:
		FUNC1("FATAL: Unknown sensor version: 0x%02x", rc);
		return;
	}

	/* Set sensor-specific vars */
	sd->sif = 1;
}