#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_5__ {TYPE_1__* pcidev; scalar_t__ io_addr; } ;
typedef  TYPE_2__ ips_ha_t ;
struct TYPE_4__ {scalar_t__ revision; } ;

/* Variables and functions */
 scalar_t__ IPS_REG_FLAP ; 
 scalar_t__ IPS_REG_FLDP ; 
 scalar_t__ IPS_REVID_TROMBONE64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(ips_ha_t * ha)
{
	int timeout;
	uint8_t status = 0;

	FUNC1("ips_erase_bios", 1);

	status = 0;

	/* Clear the status register */
	FUNC4(0, ha->io_addr + IPS_REG_FLAP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC5(25);	/* 25 us */

	FUNC3(0x50, ha->io_addr + IPS_REG_FLDP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC5(25);	/* 25 us */

	/* Erase Setup */
	FUNC3(0x20, ha->io_addr + IPS_REG_FLDP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC5(25);	/* 25 us */

	/* Erase Confirm */
	FUNC3(0xD0, ha->io_addr + IPS_REG_FLDP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC5(25);	/* 25 us */

	/* Erase Status */
	FUNC3(0x70, ha->io_addr + IPS_REG_FLDP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC5(25);	/* 25 us */

	timeout = 80000;	/* 80 seconds */

	while (timeout > 0) {
		if (ha->pcidev->revision == IPS_REVID_TROMBONE64) {
			FUNC4(0, ha->io_addr + IPS_REG_FLAP);
			FUNC5(25);	/* 25 us */
		}

		status = FUNC2(ha->io_addr + IPS_REG_FLDP);

		if (status & 0x80)
			break;

		FUNC0(1);
		timeout--;
	}

	/* check for timeout */
	if (timeout <= 0) {
		/* timeout */

		/* try to suspend the erase */
		FUNC3(0xB0, ha->io_addr + IPS_REG_FLDP);
		if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
			FUNC5(25);	/* 25 us */

		/* wait for 10 seconds */
		timeout = 10000;
		while (timeout > 0) {
			if (ha->pcidev->revision == IPS_REVID_TROMBONE64) {
				FUNC4(0, ha->io_addr + IPS_REG_FLAP);
				FUNC5(25);	/* 25 us */
			}

			status = FUNC2(ha->io_addr + IPS_REG_FLDP);

			if (status & 0xC0)
				break;

			FUNC0(1);
			timeout--;
		}

		return (1);
	}

	/* check for valid VPP */
	if (status & 0x08)
		/* VPP failure */
		return (1);

	/* check for successful flash */
	if (status & 0x30)
		/* sequence error */
		return (1);

	/* Otherwise, we were successful */
	/* clear status */
	FUNC3(0x50, ha->io_addr + IPS_REG_FLDP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC5(25);	/* 25 us */

	/* enable reads */
	FUNC3(0xFF, ha->io_addr + IPS_REG_FLDP);
	if (ha->pcidev->revision == IPS_REVID_TROMBONE64)
		FUNC5(25);	/* 25 us */

	return (0);
}