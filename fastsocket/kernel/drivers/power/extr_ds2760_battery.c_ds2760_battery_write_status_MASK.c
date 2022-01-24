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
struct ds2760_device_info {char* raw; int /*<<< orphan*/  w1_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2760_EEPROM_BLOCK1 ; 
 size_t DS2760_STATUS_REG ; 
 int /*<<< orphan*/  DS2760_STATUS_WRITE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ds2760_device_info *di,
					char status)
{
	if (status == di->raw[DS2760_STATUS_REG])
		return;

	FUNC2(di->w1_dev, &status, DS2760_STATUS_WRITE_REG, 1);
	FUNC1(di->w1_dev, DS2760_EEPROM_BLOCK1);
	FUNC0(di->w1_dev, DS2760_EEPROM_BLOCK1);
}