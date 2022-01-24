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
typedef  int /*<<< orphan*/  u8 ;
struct ipw_priv {int /*<<< orphan*/ * eeprom; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 size_t EEPROM_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IPW_EEPROM_DATA ; 
 int IPW_EEPROM_IMAGE_SIZE ; 
 int /*<<< orphan*/  IPW_EEPROM_LOAD_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_priv*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ipw_priv *priv)
{
	int i;
	__le16 *eeprom = (__le16 *) priv->eeprom;

	FUNC1(">>\n");

	/* read entire contents of eeprom into private buffer */
	for (i = 0; i < 128; i++)
		eeprom[i] = FUNC2(FUNC3(priv, (u8) i));

	/*
	   If the data looks correct, then copy it to our private
	   copy.  Otherwise let the firmware know to perform the operation
	   on its own.
	 */
	if (priv->eeprom[EEPROM_VERSION] != 0) {
		FUNC0("Writing EEPROM data into SRAM\n");

		/* write the eeprom data to sram */
		for (i = 0; i < IPW_EEPROM_IMAGE_SIZE; i++)
			FUNC5(priv, IPW_EEPROM_DATA + i, priv->eeprom[i]);

		/* Do not load eeprom data on fatal error or suspend */
		FUNC4(priv, IPW_EEPROM_LOAD_DISABLE, 0);
	} else {
		FUNC0("Enabling FW initializationg of SRAM\n");

		/* Load eeprom data on fatal error or suspend */
		FUNC4(priv, IPW_EEPROM_LOAD_DISABLE, 1);
	}

	FUNC1("<<\n");
}