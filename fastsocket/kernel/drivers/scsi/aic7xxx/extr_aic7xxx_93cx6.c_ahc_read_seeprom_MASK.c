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
struct seeprom_descriptor {int sd_MS; int sd_CS; int sd_chip; int sd_DO; int sd_CK; int sd_DI; int /*<<< orphan*/  sd_RDY; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seeprom_descriptor*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct seeprom_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct seeprom_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seeprom_descriptor*) ; 
 int /*<<< orphan*/  seeprom_read ; 
 int /*<<< orphan*/  FUNC5 (struct seeprom_descriptor*,int /*<<< orphan*/ *) ; 

int
FUNC6(struct seeprom_descriptor *sd, uint16_t *buf,
		 u_int start_addr, u_int count)
{
	int i = 0;
	u_int k = 0;
	uint16_t v;
	uint8_t temp;

	/*
	 * Read the requested registers of the seeprom.  The loop
	 * will range from 0 to count-1.
	 */
	for (k = start_addr; k < count + start_addr; k++) {
		/*
		 * Now we're ready to send the read command followed by the
		 * address of the 16-bit register we want to read.
		 */
		FUNC5(sd, &seeprom_read);

		/* Send the 6 or 8 bit address (MSB first, LSB last). */
		temp = sd->sd_MS ^ sd->sd_CS;
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

		/*
		 * Now read the 16 bit register.  An initial 0 precedes the
		 * register contents which begins with bit 15 (MSB) and ends
		 * with bit 0 (LSB).  The initial 0 will be shifted off the
		 * top of our word as we let the loop run from 0 to 16.
		 */
		v = 0;
		for (i = 16; i >= 0; i--) {
			FUNC2(sd, temp);
			FUNC0(sd, sd->sd_RDY);
			v <<= 1;
			if (FUNC1(sd) & sd->sd_DI)
				v |= 1;
			FUNC2(sd, temp ^ sd->sd_CK);
			FUNC0(sd, sd->sd_RDY);
		}

		buf[k - start_addr] = v;

		/* Reset the chip select for the next command cycle. */
		FUNC4(sd);
	}
#ifdef AHC_DUMP_EEPROM
	printf("\nSerial EEPROM:\n\t");
	for (k = 0; k < count; k = k + 1) {
		if (((k % 8) == 0) && (k != 0)) {
			printf ("\n\t");
		}
		printf (" 0x%x", buf[k]);
	}
	printf ("\n");
#endif
	return (1);
}