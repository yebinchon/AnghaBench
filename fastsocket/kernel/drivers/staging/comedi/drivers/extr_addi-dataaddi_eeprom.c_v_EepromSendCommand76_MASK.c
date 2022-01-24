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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 

void FUNC3(unsigned int dw_Address, unsigned int dw_EepromCommand,
	unsigned char b_DataLengthInBits)
{

	char c_BitPos = 0;

	unsigned int dw_RegisterValue = 0;

   /*****************************/

	/* Enable EEPROM Chip Select */

   /*****************************/

	dw_RegisterValue = 0x2;

   /********************************************************************/

	/* Toggle EEPROM's Chip select to get it out of Shift Register Mode */

   /********************************************************************/

	FUNC0(dw_RegisterValue, dw_Address);

   /***************/

	/* Wait 0.1 ms */

   /***************/

	FUNC1(100);

   /*******************************************/

	/* Send EEPROM command - one bit at a time */

   /*******************************************/

	for (c_BitPos = (b_DataLengthInBits - 1); c_BitPos >= 0; c_BitPos--)
	{

      /**********************************/

		/* Check if current bit is 0 or 1 */

      /**********************************/

		if (dw_EepromCommand & (1 << c_BitPos))
		{

	 /***********/

			/* Write 1 */

	 /***********/

			dw_RegisterValue = dw_RegisterValue | 0x4;

		}

		else
		{

	 /***********/

			/* Write 0 */

	 /***********/

			dw_RegisterValue = dw_RegisterValue & 0x3;

		}

      /*********************/

		/* Write the command */

      /*********************/

		FUNC0(dw_RegisterValue, dw_Address);

      /***************/

		/* Wait 0.1 ms */

      /***************/

		FUNC1(100);

      /****************************/

		/* Trigger the EEPROM clock */

      /****************************/

		FUNC2(dw_Address, dw_RegisterValue);

	}

}