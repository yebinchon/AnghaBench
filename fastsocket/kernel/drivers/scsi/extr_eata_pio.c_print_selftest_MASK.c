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

/* Variables and functions */
 int /*<<< orphan*/  EATA_CMD_PIO_SETUPTEST ; 
 scalar_t__ HA_RDATA ; 
 scalar_t__ HA_RSTATUS ; 
 int HA_SBUSY ; 
 int HA_SDRQ ; 
 int HA_SERROR ; 
 scalar_t__ HA_WCOMMAND ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static unsigned int FUNC4(unsigned int base)
{
	unsigned char buffer[512];
#ifdef VERBOSE_SETUP
	int z;
#endif

	FUNC3("eata_pio: executing controller self test & setup...\n");
	while (FUNC0(base + HA_RSTATUS) & HA_SBUSY);
	FUNC2(EATA_CMD_PIO_SETUPTEST, base + HA_WCOMMAND);
	do {
		while (FUNC0(base + HA_RSTATUS) & HA_SBUSY)
			/* nothing */ ;
		if (FUNC0(base + HA_RSTATUS) & HA_SDRQ) {
			FUNC1(base + HA_RDATA, &buffer, 256);
#ifdef VERBOSE_SETUP
			/* no beeps please... */
			for (z = 0; z < 511 && buffer[z]; z++)
				if (buffer[z] != 7)
					printk("%c", buffer[z]);
#endif
		}
	} while (FUNC0(base + HA_RSTATUS) & (HA_SBUSY | HA_SDRQ));

	return (!(FUNC0(base + HA_RSTATUS) & HA_SERROR));
}