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
struct sd {int /*<<< orphan*/  sensor; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  OV7610_REG_COM_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SEN_OV8610 ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct sd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	int rc;

	FUNC0(D_PROBE, "starting ov8xx0 configuration");

	/* Detect sensor (sub)type */
	rc = FUNC2(sd, OV7610_REG_COM_I);
	if (rc < 0) {
		FUNC0(D_ERR, "Error detecting sensor type");
		return;
	}
	if ((rc & 3) == 1)
		sd->sensor = SEN_OV8610;
	else
		FUNC1("Unknown image sensor version: %d", rc & 3);
}