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
typedef  scalar_t__ u8 ;
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ AR5K_EEPROM_MODE_11A ; 
 scalar_t__ AR5K_EEPROM_MODE_11G ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,scalar_t__) ; 

void
FUNC1(struct ath5k_hw *ah)
{
	u8 mode;

	for (mode = AR5K_EEPROM_MODE_11A; mode <= AR5K_EEPROM_MODE_11G; mode++)
		FUNC0(ah, mode);
}