#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {scalar_t__ track; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* redo ) () ;int /*<<< orphan*/  (* done ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int flags; scalar_t__ track; } ;

/* Variables and functions */
 TYPE_4__* DP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* DRS ; 
 int FD_DEBUG ; 
 int /*<<< orphan*/  FD_DISK_CHANGED ; 
 int /*<<< orphan*/  FD_DISK_NEWCHANGE ; 
 int FD_RAW_NEED_DISK ; 
 int FD_RAW_NEED_SEEK ; 
 int FD_SEEK ; 
 int FD_SILENT_DCL_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ NEED_1_RECAL ; 
 scalar_t__ NO_TRACK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int blind_seek ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* cont ; 
 int /*<<< orphan*/  current_drive ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_floppy ; 
 int /*<<< orphan*/  fdc ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__* raw_cmd ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  seek_interrupt ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(void)
{
	int track;

	blind_seek = 0;

#ifdef DCL_DEBUG
	if (DP->flags & FD_DEBUG) {
		DPRINT("calling disk change from seek\n");
	}
#endif

	if (!FUNC3(FD_DISK_NEWCHANGE) &&
	    FUNC7(current_drive) && (raw_cmd->flags & FD_RAW_NEED_DISK)) {
		/* the media changed flag should be cleared after the seek.
		 * If it isn't, this means that there is really no disk in
		 * the drive.
		 */
		FUNC2(FD_DISK_CHANGED);
		cont->done(0);
		cont->redo();
		return;
	}
	if (DRS->track <= NEED_1_RECAL) {
		FUNC9();
		return;
	} else if (FUNC3(FD_DISK_NEWCHANGE) &&
		   (raw_cmd->flags & FD_RAW_NEED_DISK) &&
		   (DRS->track <= NO_TRACK || DRS->track == raw_cmd->track)) {
		/* we seek to clear the media-changed condition. Does anybody
		 * know a more elegant way, which works on all drives? */
		if (raw_cmd->track)
			track = raw_cmd->track - 1;
		else {
			if (DP->flags & FD_SILENT_DCL_CLEAR) {
				FUNC10(fdc, ~(0x10 << FUNC4(current_drive)), 0);
				blind_seek = 1;
				raw_cmd->flags |= FD_RAW_NEED_SEEK;
			}
			track = 1;
		}
	} else {
		FUNC5();
		if (raw_cmd->track != DRS->track &&
		    (raw_cmd->flags & FD_RAW_NEED_SEEK))
			track = raw_cmd->track;
		else {
			FUNC11();
			return;
		}
	}

	do_floppy = seek_interrupt;
	FUNC8(FD_SEEK);
	FUNC8(FUNC4(current_drive));
	FUNC1(track);
	FUNC6("seek command:");
}