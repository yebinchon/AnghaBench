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
struct TYPE_4__ {scalar_t__ chrdev_dir; int /*<<< orphan*/ * buf; scalar_t__ valid; } ;
typedef  TYPE_1__ idetape_tape_t ;
struct TYPE_5__ {int /*<<< orphan*/  atapi_flags; TYPE_1__* driver_data; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ IDETAPE_DIR_NONE ; 
 scalar_t__ IDETAPE_DIR_READ ; 
 int /*<<< orphan*/  IDE_AFLAG_FILEMARK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(ide_drive_t *drive)
{
	idetape_tape_t *tape = drive->driver_data;

	if (tape->chrdev_dir != IDETAPE_DIR_READ)
		return;

	FUNC0(FUNC1(IDE_AFLAG_FILEMARK), &drive->atapi_flags);
	tape->valid = 0;
	if (tape->buf != NULL) {
		FUNC2(tape->buf);
		tape->buf = NULL;
	}

	tape->chrdev_dir = IDETAPE_DIR_NONE;
}