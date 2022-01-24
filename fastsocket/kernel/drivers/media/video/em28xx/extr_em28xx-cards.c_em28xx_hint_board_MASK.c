#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct em28xx {scalar_t__ hash; size_t model; scalar_t__ i2c_hash; int /*<<< orphan*/  tuner_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {scalar_t__ hash; size_t model; int /*<<< orphan*/  tuner; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int em28xx_bcount ; 
 TYPE_3__* em28xx_boards ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 
 TYPE_1__* em28xx_eeprom_hash ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_1__* em28xx_i2c_hash ; 

__attribute__((used)) static int FUNC3(struct em28xx *dev)
{
	int i;

	/* HINT method: EEPROM
	 *
	 * This method works only for boards with eeprom.
	 * Uses a hash of all eeprom bytes. The hash should be
	 * unique for a vendor/tuner pair.
	 * There are a high chance that tuners for different
	 * video standards produce different hashes.
	 */
	for (i = 0; i < FUNC0(em28xx_eeprom_hash); i++) {
		if (dev->hash == em28xx_eeprom_hash[i].hash) {
			dev->model = em28xx_eeprom_hash[i].model;
			dev->tuner_type = em28xx_eeprom_hash[i].tuner;

			FUNC2("Your board has no unique USB ID.\n");
			FUNC2("A hint were successfully done, "
				      "based on eeprom hash.\n");
			FUNC2("This method is not 100%% failproof.\n");
			FUNC2("If the board were missdetected, "
				      "please email this log to:\n");
			FUNC2("\tV4L Mailing List "
				      " <linux-media@vger.kernel.org>\n");
			FUNC2("Board detected as %s\n",
				      em28xx_boards[dev->model].name);

			return 0;
		}
	}

	/* HINT method: I2C attached devices
	 *
	 * This method works for all boards.
	 * Uses a hash of i2c scanned devices.
	 * Devices with the same i2c attached chips will
	 * be considered equal.
	 * This method is less precise than the eeprom one.
	 */

	/* user did not request i2c scanning => do it now */
	if (!dev->i2c_hash)
		FUNC1(dev);

	for (i = 0; i < FUNC0(em28xx_i2c_hash); i++) {
		if (dev->i2c_hash == em28xx_i2c_hash[i].hash) {
			dev->model = em28xx_i2c_hash[i].model;
			dev->tuner_type = em28xx_i2c_hash[i].tuner;
			FUNC2("Your board has no unique USB ID.\n");
			FUNC2("A hint were successfully done, "
				      "based on i2c devicelist hash.\n");
			FUNC2("This method is not 100%% failproof.\n");
			FUNC2("If the board were missdetected, "
				      "please email this log to:\n");
			FUNC2("\tV4L Mailing List "
				      " <linux-media@vger.kernel.org>\n");
			FUNC2("Board detected as %s\n",
				      em28xx_boards[dev->model].name);

			return 0;
		}
	}

	FUNC2("Your board has no unique USB ID and thus need a "
		      "hint to be detected.\n");
	FUNC2("You may try to use card=<n> insmod option to "
		      "workaround that.\n");
	FUNC2("Please send an email with this log to:\n");
	FUNC2("\tV4L Mailing List <linux-media@vger.kernel.org>\n");
	FUNC2("Board eeprom hash is 0x%08lx\n", dev->hash);
	FUNC2("Board i2c devicelist hash is 0x%08lx\n", dev->i2c_hash);

	FUNC2("Here is a list of valid choices for the card=<n>"
		      " insmod option:\n");
	for (i = 0; i < em28xx_bcount; i++) {
		FUNC2("    card=%d -> %s\n",
				i, em28xx_boards[i].name);
	}
	return -1;
}