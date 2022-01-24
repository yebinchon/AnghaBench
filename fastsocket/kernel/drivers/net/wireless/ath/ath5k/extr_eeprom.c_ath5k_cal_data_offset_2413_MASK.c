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
typedef  unsigned int u32 ;
struct ath5k_eeprom_info {int /*<<< orphan*/  ee_header; int /*<<< orphan*/  ee_misc4; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  AR5K_EEPROM_MODE_11A 130 
#define  AR5K_EEPROM_MODE_11B 129 
#define  AR5K_EEPROM_MODE_11G 128 
 int AR5K_EEPROM_N_2GHZ_CHAN_2413 ; 
 int AR5K_EEPROM_N_5GHZ_CHAN ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_eeprom_info*,int) ; 

__attribute__((used)) static unsigned int
FUNC4(struct ath5k_eeprom_info *ee, int mode)
{
	u32 offset = FUNC0(ee->ee_misc4);

	switch (mode) {
	case AR5K_EEPROM_MODE_11G:
		if (FUNC2(ee->ee_header))
			offset += FUNC3(ee,
					AR5K_EEPROM_MODE_11B) +
					AR5K_EEPROM_N_2GHZ_CHAN_2413 / 2;
		/* fall through */
	case AR5K_EEPROM_MODE_11B:
		if (FUNC1(ee->ee_header))
			offset += FUNC3(ee,
					AR5K_EEPROM_MODE_11A) +
					AR5K_EEPROM_N_5GHZ_CHAN / 2;
		/* fall through */
	case AR5K_EEPROM_MODE_11A:
		break;
	default:
		break;
	}

	return offset;
}