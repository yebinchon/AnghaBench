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
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPLD_SPI ; 
 int /*<<< orphan*/  CPLD_SPI_CS_EEPROM ; 
#define  DEVICE_EEPROM 128 
 int /*<<< orphan*/  T_CS ; 
 TYPE_1__ ssp_configuration ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1 (void)
{
	switch (ssp_configuration.device) {
	case DEVICE_EEPROM:
		CPLD_SPI &= ~CPLD_SPI_CS_EEPROM;
		break;
	}
	FUNC0 (T_CS);
}