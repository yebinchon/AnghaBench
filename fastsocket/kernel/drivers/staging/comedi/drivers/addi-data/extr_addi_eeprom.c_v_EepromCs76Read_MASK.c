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
 int /*<<< orphan*/  EE76_CMD_LEN ; 
 int EE_READ ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 

void FUNC5(unsigned int dw_Address, unsigned short w_offset, unsigned short *pw_Value)
{

        char c_BitPos = 0;

	unsigned int dw_RegisterValue = 0;

	unsigned int dw_RegisterValueRead = 0;

   /*************************************************/

	/* Send EEPROM read command and offset to EEPROM */

   /*************************************************/

	FUNC4(dw_Address, (EE_READ << 4) | (w_offset / 2),
		EE76_CMD_LEN);

   /*******************************/

	/* Get the last register value */

   /*******************************/

	dw_RegisterValue = (((w_offset / 2) & 0x1) << 2) | 0x2;

   /*****************************/

	/* Set the 16-bit value of 0 */

   /*****************************/

	*pw_Value = 0;

   /************************/

	/* Get the 16-bit value */

   /************************/

	for (c_BitPos = 0; c_BitPos < 16; c_BitPos++)
	{

      /****************************/

		/* Trigger the EEPROM clock */

      /****************************/

		FUNC3(dw_Address, dw_RegisterValue);

      /**********************/

		/* Get the result bit */

      /**********************/

		dw_RegisterValueRead = FUNC0(dw_Address);

      /***************/

		/* Wait 0.1 ms */

      /***************/

		FUNC2(100);

      /***************************************/

		/* Get bit value and shift into result */

      /***************************************/

		if (dw_RegisterValueRead & 0x8)
		{

	 /**********/

			/* Read 1 */

	 /**********/

			*pw_Value = (*pw_Value << 1) | 0x1;

		}

		else
		{

	 /**********/

			/* Read 0 */

	 /**********/

			*pw_Value = (*pw_Value << 1);

		}

	}

   /*************************/

	/* Clear all EEPROM bits */

   /*************************/

	dw_RegisterValue = 0x0;

   /********************************************************************/

	/* Toggle EEPROM's Chip select to get it out of Shift Register Mode */

   /********************************************************************/

	FUNC1(dw_RegisterValue, dw_Address);

   /***************/

	/* Wait 0.1 ms */

   /***************/

	FUNC2(100);

}