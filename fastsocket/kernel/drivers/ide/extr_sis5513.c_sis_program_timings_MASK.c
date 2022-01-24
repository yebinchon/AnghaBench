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
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 scalar_t__ ATA_100 ; 
 scalar_t__ ATA_133 ; 
 scalar_t__ chipset_family ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC3(ide_drive_t *drive, const u8 mode)
{
	if (chipset_family < ATA_100)		/* ATA_16/33/66/100a */
		FUNC2(drive, mode);
	else if (chipset_family < ATA_133)	/* ATA_100/133a */
		FUNC0(drive, mode);
	else					/* ATA_133 */
		FUNC1(drive, mode);
}