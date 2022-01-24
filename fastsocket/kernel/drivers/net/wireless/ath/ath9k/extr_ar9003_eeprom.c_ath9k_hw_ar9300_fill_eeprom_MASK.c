#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
struct ar9300_eeprom {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC1(struct ath_hw *ah)
{
	u8 *mptr = (u8 *) &ah->eeprom.ar9300_eep;

	if (FUNC0(ah, mptr,
			sizeof(struct ar9300_eeprom)) < 0)
		return false;

	return true;
}