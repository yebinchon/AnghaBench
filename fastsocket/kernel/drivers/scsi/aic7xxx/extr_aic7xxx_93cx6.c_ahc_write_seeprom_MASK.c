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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int u_int ;
struct seeprom_descriptor {scalar_t__ sd_chip; int sd_MS; int sd_CS; int sd_DO; int sd_CK; int sd_DI; int /*<<< orphan*/  sd_RDY; } ;
struct seeprom_cmd {int dummy; } ;

/* Variables and functions */
 scalar_t__ C46 ; 
 scalar_t__ C56_66 ; 
 int /*<<< orphan*/  FUNC0 (struct seeprom_descriptor*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct seeprom_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct seeprom_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct seeprom_descriptor*) ; 
 struct seeprom_cmd seeprom_ewds ; 
 struct seeprom_cmd seeprom_ewen ; 
 struct seeprom_cmd seeprom_long_ewds ; 
 struct seeprom_cmd seeprom_long_ewen ; 
 struct seeprom_cmd const seeprom_write ; 
 int /*<<< orphan*/  FUNC5 (struct seeprom_descriptor*,struct seeprom_cmd const*) ; 

int
FUNC6(struct seeprom_descriptor *sd, uint16_t *buf,
		  u_int start_addr, u_int count)
{
	const struct seeprom_cmd *ewen, *ewds;
	uint16_t v;
	uint8_t temp;
	int i, k;

	/* Place the chip into write-enable mode */
	if (sd->sd_chip == C46) {
		ewen = &seeprom_ewen;
		ewds = &seeprom_ewds;
	} else if (sd->sd_chip == C56_66) {
		ewen = &seeprom_long_ewen;
		ewds = &seeprom_long_ewds;
	} else {
		FUNC3("ahc_write_seeprom: unsupported seeprom type %d\n",
		       sd->sd_chip);
		return (0);
	}

	FUNC5(sd, ewen);
	FUNC4(sd);

	/* Write all requested data out to the seeprom. */
	temp = sd->sd_MS ^ sd->sd_CS;
	for (k = start_addr; k < count + start_addr; k++) {
		/* Send the write command */
		FUNC5(sd, &seeprom_write);

		/* Send the 6 or 8 bit address (MSB first). */
		for (i = (sd->sd_chip - 1); i >= 0; i--) {
			if ((k & (1 << i)) != 0)
				temp ^= sd->sd_DO;
			FUNC2(sd, temp);
			FUNC0(sd, sd->sd_RDY);
			FUNC2(sd, temp ^ sd->sd_CK);
			FUNC0(sd, sd->sd_RDY);
			if ((k & (1 << i)) != 0)
				temp ^= sd->sd_DO;
		}

		/* Write the 16 bit value, MSB first */
		v = buf[k - start_addr];
		for (i = 15; i >= 0; i--) {
			if ((v & (1 << i)) != 0)
				temp ^= sd->sd_DO;
			FUNC2(sd, temp);
			FUNC0(sd, sd->sd_RDY);
			FUNC2(sd, temp ^ sd->sd_CK);
			FUNC0(sd, sd->sd_RDY);
			if ((v & (1 << i)) != 0)
				temp ^= sd->sd_DO;
		}

		/* Wait for the chip to complete the write */
		temp = sd->sd_MS;
		FUNC2(sd, temp);
		FUNC0(sd, sd->sd_RDY);
		temp = sd->sd_MS ^ sd->sd_CS;
		do {
			FUNC2(sd, temp);
			FUNC0(sd, sd->sd_RDY);
			FUNC2(sd, temp ^ sd->sd_CK);
			FUNC0(sd, sd->sd_RDY);
		} while ((FUNC1(sd) & sd->sd_DI) == 0);

		FUNC4(sd);
	}

	/* Put the chip back into write-protect mode */
	FUNC5(sd, ewds);
	FUNC4(sd);

	return (1);
}