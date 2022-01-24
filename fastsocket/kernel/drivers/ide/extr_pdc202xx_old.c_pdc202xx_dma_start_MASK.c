#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct request {int dummy; } ;
struct TYPE_6__ {int extra_base; scalar_t__ channel; struct request* rq; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {scalar_t__ current_speed; scalar_t__ media; int dev_flags; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 int IDE_DFLAG_LBA48 ; 
 scalar_t__ READ ; 
 scalar_t__ XFER_UDMA_2 ; 
 int FUNC0 (struct request*) ; 
 scalar_t__ ide_disk ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct request*) ; 

__attribute__((used)) static void FUNC7(ide_drive_t *drive)
{
	if (drive->current_speed > XFER_UDMA_2)
		FUNC5(drive->hwif);
	if (drive->media != ide_disk || (drive->dev_flags & IDE_DFLAG_LBA48)) {
		ide_hwif_t *hwif	= drive->hwif;
		struct request *rq	= hwif->rq;
		unsigned long high_16	= hwif->extra_base - 16;
		unsigned long atapi_reg	= high_16 + (hwif->channel ? 0x24 : 0x20);
		u32 word_count	= 0;
		u8 clock = FUNC2(high_16 + 0x11);

		FUNC3(clock | (hwif->channel ? 0x08 : 0x02), high_16 + 0x11);
		word_count = (FUNC0(rq) << 8);
		word_count = (FUNC6(rq) == READ) ?
					word_count | 0x05000000 :
					word_count | 0x06000000;
		FUNC4(word_count, atapi_reg);
	}
	FUNC1(drive);
}