#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ide_cmd {int tf_flags; } ;
struct TYPE_5__ {unsigned int dmatable_dma; scalar_t__ dma_base; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int IDE_TFLAG_WRITE ; 
 unsigned int FUNC0 (TYPE_2__*,struct ide_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(ide_drive_t *drive, struct ide_cmd *cmd)
{
	ide_hwif_t *hwif = drive->hwif;
	unsigned int count, rw = (cmd->tf_flags & IDE_TFLAG_WRITE) ? 1 : 2;

	count = FUNC0(drive, cmd);
	if (count == 0)
		/* try PIO instead of DMA */
		return 1;

	FUNC1(hwif->dmatable_dma | rw, hwif->dma_base);
	/* start DMA */
	FUNC2(count * 2 - 1, hwif->dma_base + 2);

	return 0;
}