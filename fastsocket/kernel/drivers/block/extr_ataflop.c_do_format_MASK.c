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
struct atari_format_descr {int track; int head; int sect_offset; } ;
struct TYPE_5__ {int blocks; int spt; } ;
struct TYPE_4__ {scalar_t__ drive_types; int index; } ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int BufferDrive ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DriveType ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FormatError ; 
 int /*<<< orphan*/  IRQ_MFP_FDC ; 
 int IsFormatting ; 
 int NUM_DISK_MINORS ; 
 int ReqSide ; 
 int ReqTrack ; 
 unsigned char* TrackBuffer ; 
 TYPE_2__* UDT ; 
 TYPE_2__* atari_disk_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int fdc_busy ; 
 int /*<<< orphan*/  fdc_wait ; 
 int /*<<< orphan*/  floppy_irq ; 
 int /*<<< orphan*/  format_wait ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 TYPE_1__* minor2disktype ; 
 int /*<<< orphan*/  motor_off_timer ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(int drive, int type, struct atari_format_descr *desc)
{
	unsigned char	*p;
	int sect, nsect;
	unsigned long	flags;

	FUNC0(("do_format( dr=%d tr=%d he=%d offs=%d )\n",
		drive, desc->track, desc->head, desc->sect_offset ));

	FUNC6(flags);
	while( fdc_busy ) FUNC8( &fdc_wait );
	fdc_busy = 1;
	FUNC9(floppy_irq, NULL);
	FUNC2( IRQ_MFP_FDC ); /* should be already, just to be sure */
	FUNC5(flags);

	if (type) {
		if (--type >= NUM_DISK_MINORS ||
		    minor2disktype[type].drive_types > DriveType) {
			FUNC7();
			return -EINVAL;
		}
		type = minor2disktype[type].index;
		UDT = &atari_disk_type[type];
	}

	if (!UDT || desc->track >= UDT->blocks/UDT->spt/2 || desc->head >= 2) {
		FUNC7();
		return -EINVAL;
	}

	nsect = UDT->spt;
	p = TrackBuffer;
	/* The track buffer is used for the raw track data, so its
	   contents become invalid! */
	BufferDrive = -1;
	/* stop deselect timer */
	FUNC3( &motor_off_timer );

	FUNC1( 60 * (nsect / 9), 0x4e );
	for( sect = 0; sect < nsect; ++sect ) {
		FUNC1( 12, 0 );
		FUNC1( 3, 0xf5 );
		*p++ = 0xfe;
		*p++ = desc->track;
		*p++ = desc->head;
		*p++ = (nsect + sect - desc->sect_offset) % nsect + 1;
		*p++ = 2;
		*p++ = 0xf7;
		FUNC1( 22, 0x4e );
		FUNC1( 12, 0 );
		FUNC1( 3, 0xf5 );
		*p++ = 0xfb;
		FUNC1( 512, 0xe5 );
		*p++ = 0xf7;
		FUNC1( 40, 0x4e );
	}
	FUNC1( TrackBuffer+BUFFER_SIZE-p, 0x4e );

	IsFormatting = 1;
	FormatError = 0;
	ReqTrack = desc->track;
	ReqSide  = desc->head;
	FUNC4( drive );

	FUNC8( &format_wait );

	FUNC7();
	return( FormatError ? -EIO : 0 );	
}