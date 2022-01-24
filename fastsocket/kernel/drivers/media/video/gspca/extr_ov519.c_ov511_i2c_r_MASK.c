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
typedef  int u8 ;
struct sd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  R511_I2C_CTL ; 
 int /*<<< orphan*/  R51x_I2C_DATA ; 
 int /*<<< orphan*/  R51x_I2C_SADDR_2 ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct sd *sd, u8 reg)
{
	int rc, value, retries;

	/* Two byte write cycle */
	for (retries = 6; ; ) {
		/* Select camera register */
		FUNC2(sd, R51x_I2C_SADDR_2, reg);

		/* Initiate 2-byte write cycle */
		FUNC2(sd, R511_I2C_CTL, 0x03);

		do {
			rc = FUNC1(sd, R511_I2C_CTL);
		} while (rc > 0 && ((rc & 1) == 0)); /* Retry until idle */

		if (rc < 0)
			return rc;

		if ((rc & 2) == 0) /* Ack? */
			break;

		/* I2C abort */
		FUNC2(sd, R511_I2C_CTL, 0x10);

		if (--retries < 0) {
			FUNC0(D_USBI, "i2c write retries exhausted");
			return -1;
		}
	}

	/* Two byte read cycle */
	for (retries = 6; ; ) {
		/* Initiate 2-byte read cycle */
		FUNC2(sd, R511_I2C_CTL, 0x05);

		do {
			rc = FUNC1(sd, R511_I2C_CTL);
		} while (rc > 0 && ((rc & 1) == 0)); /* Retry until idle */

		if (rc < 0)
			return rc;

		if ((rc & 2) == 0) /* Ack? */
			break;

		/* I2C abort */
		FUNC2(sd, R511_I2C_CTL, 0x10);

		if (--retries < 0) {
			FUNC0(D_USBI, "i2c read retries exhausted");
			return -1;
		}
	}

	value = FUNC1(sd, R51x_I2C_DATA);

	FUNC0(D_USBI, "ov511_i2c_r %02x %02x", reg, value);

	/* This is needed to make i2c_w() work */
	FUNC2(sd, R511_I2C_CTL, 0x05);

	return value;
}