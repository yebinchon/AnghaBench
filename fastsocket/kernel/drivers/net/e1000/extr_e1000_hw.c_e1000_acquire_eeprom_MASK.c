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
typedef  scalar_t__ u32 ;
struct e1000_eeprom_info {scalar_t__ type; } ;
struct e1000_hw {scalar_t__ mac_type; struct e1000_eeprom_info eeprom; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 scalar_t__ E1000_EECD_CS ; 
 scalar_t__ E1000_EECD_DI ; 
 scalar_t__ E1000_EECD_GNT ; 
 scalar_t__ E1000_EECD_REQ ; 
 scalar_t__ E1000_EECD_SK ; 
 scalar_t__ E1000_EEPROM_GRANT_ATTEMPTS ; 
 int /*<<< orphan*/  E1000_ERR_EEPROM ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EECD ; 
 scalar_t__ e1000_82544 ; 
 scalar_t__ e1000_eeprom_microwire ; 
 scalar_t__ e1000_eeprom_spi ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw)
{
	struct e1000_eeprom_info *eeprom = &hw->eeprom;
	u32 eecd, i = 0;

	FUNC1("e1000_acquire_eeprom");

	eecd = FUNC2(EECD);

	/* Request EEPROM Access */
	if (hw->mac_type > e1000_82544) {
		eecd |= E1000_EECD_REQ;
		FUNC3(EECD, eecd);
		eecd = FUNC2(EECD);
		while ((!(eecd & E1000_EECD_GNT)) &&
		       (i < E1000_EEPROM_GRANT_ATTEMPTS)) {
			i++;
			FUNC4(5);
			eecd = FUNC2(EECD);
		}
		if (!(eecd & E1000_EECD_GNT)) {
			eecd &= ~E1000_EECD_REQ;
			FUNC3(EECD, eecd);
			FUNC1("Could not acquire EEPROM grant\n");
			return -E1000_ERR_EEPROM;
		}
	}

	/* Setup EEPROM for Read/Write */

	if (eeprom->type == e1000_eeprom_microwire) {
		/* Clear SK and DI */
		eecd &= ~(E1000_EECD_DI | E1000_EECD_SK);
		FUNC3(EECD, eecd);

		/* Set CS */
		eecd |= E1000_EECD_CS;
		FUNC3(EECD, eecd);
	} else if (eeprom->type == e1000_eeprom_spi) {
		/* Clear SK and CS */
		eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
		FUNC3(EECD, eecd);
		FUNC0();
		FUNC4(1);
	}

	return E1000_SUCCESS;
}