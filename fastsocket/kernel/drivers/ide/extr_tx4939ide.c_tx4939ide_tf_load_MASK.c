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
typedef  int u8 ;
struct ide_taskfile {int dummy; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int IDE_VALID_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ide_taskfile*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(ide_drive_t *drive, struct ide_taskfile *tf,
			      u8 valid)
{
	FUNC0(drive, tf, valid);

	if (valid & IDE_VALID_DEVICE)
		FUNC1(drive);
}