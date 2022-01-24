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

void FUNC2(unsigned int dw_Address, unsigned int dw_RegisterValue)
{

   /************************/

	/* Set EEPROM clock Low */

   /************************/

	FUNC0(dw_RegisterValue & 0x6, dw_Address);

   /***************/

	/* Wait 0.1 ms */

   /***************/

	FUNC1(100);

   /*************************/

	/* Set EEPROM clock High */

   /*************************/

	FUNC0(dw_RegisterValue | 0x1, dw_Address);

   /***************/

	/* Wait 0.1 ms */

   /***************/

	FUNC1(100);

}