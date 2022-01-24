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
struct TYPE_5__ {int /*<<< orphan*/ * proc; TYPE_1__* hwif; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int /*<<< orphan*/  proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  generic_drive_entries ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_ide_root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(ide_drive_t *drive)
{
	if (drive->proc) {
		FUNC0(drive->proc, generic_drive_entries);
		FUNC1(drive->name, proc_ide_root);
		FUNC1(drive->name, drive->hwif->proc);
		drive->proc = NULL;
	}
}