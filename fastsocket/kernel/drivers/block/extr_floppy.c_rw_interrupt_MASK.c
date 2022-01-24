#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {scalar_t__ first_read_date; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* redo ) () ;int /*<<< orphan*/  (* done ) (int) ;int /*<<< orphan*/  (* error ) () ;} ;
struct TYPE_10__ {scalar_t__ buffer; } ;
struct TYPE_9__ {int name; int /*<<< orphan*/  size; } ;
struct TYPE_8__ {scalar_t__ kernel_data; int /*<<< orphan*/  track; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE2SIZE ; 
 int COMMAND ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 TYPE_7__* DP ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t) ; 
 TYPE_6__* DRS ; 
 scalar_t__ FD_READ ; 
 int FTD_MSG ; 
 int HEAD ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int R_HEAD ; 
 int R_SECTOR ; 
 int R_TRACK ; 
 int SECTOR ; 
 int SECT_PER_TRACK ; 
 int SIZECODE ; 
 int ST1 ; 
 int ST1_EOC ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 size_t FUNC5 (size_t) ; 
 int TRACK ; 
 TYPE_2__* _floppy ; 
 size_t buffer_drive ; 
 int buffer_max ; 
 int /*<<< orphan*/  buffer_track ; 
 TYPE_4__* cont ; 
 int current_count_sectors ; 
 size_t current_drive ; 
 TYPE_3__* current_req ; 
 TYPE_2__** current_type ; 
 int /*<<< orphan*/ * floppy_sizes ; 
 int fsector_t ; 
 int in_sector_offset ; 
 int FUNC6 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 scalar_t__ probing ; 
 TYPE_1__* raw_cmd ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(void)
{
	int eoc;
	int ssize;
	int heads;
	int nr_sectors;

	if (R_HEAD >= 2) {
		/* some Toshiba floppy controllers occasionnally seem to
		 * return bogus interrupts after read/write operations, which
		 * can be recognized by a bad head number (>= 2) */
		return;
	}

	if (!DRS->first_read_date)
		DRS->first_read_date = jiffies;

	nr_sectors = 0;
	CODE2SIZE;

	if (ST1 & ST1_EOC)
		eoc = 1;
	else
		eoc = 0;

	if (COMMAND & 0x80)
		heads = 2;
	else
		heads = 1;

	nr_sectors = (((R_TRACK - TRACK) * heads +
		       R_HEAD - HEAD) * SECT_PER_TRACK +
		      R_SECTOR - SECTOR + eoc) << SIZECODE >> 2;

#ifdef FLOPPY_SANITY_CHECK
	if (nr_sectors / ssize >
	    DIV_ROUND_UP(in_sector_offset + current_count_sectors, ssize)) {
		DPRINT("long rw: %x instead of %lx\n",
		       nr_sectors, current_count_sectors);
		printk("rs=%d s=%d\n", R_SECTOR, SECTOR);
		printk("rh=%d h=%d\n", R_HEAD, HEAD);
		printk("rt=%d t=%d\n", R_TRACK, TRACK);
		printk("heads=%d eoc=%d\n", heads, eoc);
		printk("spt=%d st=%d ss=%d\n", SECT_PER_TRACK,
		       fsector_t, ssize);
		printk("in_sector_offset=%d\n", in_sector_offset);
	}
#endif

	nr_sectors -= in_sector_offset;
	FUNC3(nr_sectors, 0);
	FUNC4(current_count_sectors, nr_sectors);

	switch (FUNC6()) {
	case 2:
		cont->redo();
		return;
	case 1:
		if (!current_count_sectors) {
			cont->error();
			cont->redo();
			return;
		}
		break;
	case 0:
		if (!current_count_sectors) {
			cont->redo();
			return;
		}
		current_type[current_drive] = _floppy;
		floppy_sizes[FUNC5(current_drive)] = _floppy->size;
		break;
	}

	if (probing) {
		if (DP->flags & FTD_MSG)
			FUNC2("Auto-detected floppy type %s in fd%d\n",
			       _floppy->name, current_drive);
		current_type[current_drive] = _floppy;
		floppy_sizes[FUNC5(current_drive)] = _floppy->size;
		probing = 0;
	}

	if (FUNC0(COMMAND) != FD_READ ||
	    raw_cmd->kernel_data == current_req->buffer) {
		/* transfer directly from buffer */
		cont->done(1);
	} else if (FUNC0(COMMAND) == FD_READ) {
		buffer_track = raw_cmd->track;
		buffer_drive = current_drive;
		FUNC3(buffer_max, nr_sectors + fsector_t);
	}
	cont->redo();
}