#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int blk_size; int user_bs_factor; int /*<<< orphan*/ * buf; int /*<<< orphan*/  buffer_size; } ;
typedef  TYPE_1__ idetape_tape_t ;
struct TYPE_9__ {TYPE_1__* driver_data; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(ide_drive_t *drive, unsigned int minor)
{
	idetape_tape_t *tape = drive->driver_data;

	FUNC0(drive);
	tape->buf = FUNC5(tape->buffer_size, GFP_KERNEL);
	if (tape->buf != NULL) {
		FUNC2(drive, tape->blk_size *
				(tape->user_bs_factor - 1));
		FUNC4(tape->buf);
		tape->buf = NULL;
	}
	FUNC3(drive);
	FUNC1(drive);
	FUNC1(drive);
}